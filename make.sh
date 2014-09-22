#!/bin/bash
#
# build.sh [instance] [version (default "1.0")]
#
# Build the package.

# Ensure a non zero exit value to break the build procedure.
set -e

instance=$1
if [ -z "$instance" ] ; then
	echo "Need a name of the project build."
	exit -1
fi

version=$2
if [ -z "$version" ] ; then
	version="1.0"
	echo "Default version ${version}"
fi

environment=$3
if [ -z "$environment" ] ; then
	environment="production"
	echo "Default environment ${environment}"
fi

makefile=$instance.$environment.make
revision=$(git rev-parse HEAD)
target="target"
make=$instance-$version
expect=$target/$make.tar.gz

echo "Build $expect from $makefile, revision $revision"

# Remove previous builds.
if [ -d $target ] ; then
	rm -r $target
fi

if [ -d tmp ] ; then
    rm -rf tmp
fi
mkdir tmp

drush make $makefile ./tmp

mv scripts/* ./tmp/scripts/

cd ./tmp

tar -zcvf ../$expect .
cd ..
rm -rf tmp

if [ -f $expect ] ; then
	echo "Done."
	exit 0
else
	echo "Build failed. No file found at $target."
	exit -1
fi
