#!/bin/bash
#
# build.sh [instance] [version (default "1.0")]
#
# Build the package.

# Ensure a non zero exit value to break the build procedure.
set -e

instance=$1
if [ -z "$instance" ] ; then
	instance="rusrep"
	echo "Default instance ${instance}"
fi

version=$2
if [ -z "$version" ] ; then
	version="1.0"
	echo "Default version ${version}"
fi

makefile=$instance.make
revision=$(git rev-parse HEAD)
target="target"
make=$instance-$version
expect=$make.tar.gz

echo "Build $expect from $makefile, revision $revision"

# Remove previous builds.
if [ -d $target ] ; then
	rm -r $target
fi

drush make $makefile ./$target/$make

s="./${target}/${make}/scripts/"
rsync -av scripts/ $s

htaccess="${s}.htaccess"
echo "# Deny access to everything by default" > $htaccess
echo "Order Deny,Allow" >> $htaccess
echo "deny from all" >> $htaccess

cd ./$target

tar -zcvf $expect $make

if [ -f $expect ] ; then
	echo "Done."
	exit 0
else
	echo "Build failed. No file found at $target."
	exit -1
fi
