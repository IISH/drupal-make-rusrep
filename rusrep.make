core = 7.x
api = 2

; Core

projects[drupal][type] = core
projects[drupal][version] = 7.56

; RusRep custom modules

projects[datasets][type] = module
projects[datasets][subdir] = custom
projects[datasets][version] = 1.x
projects[datasets][download][type] = git
projects[datasets][download][url] = "git@github.com:IISH/drupal-module-rusrep.git"
projects[datasets][download][branch] = master

projects[querytool][type] = module
projects[querytool][subdir] = custom
projects[querytool][version] = 1.x-dev
projects[querytool][download][type] = git
projects[querytool][download][url] = "git@github.com:IISH/drupal-module-querytool.git"
projects[querytool][download][branch] = test

; RusRep required modules

projects[admin_menu][subdir] = contrib
projects[admin_menu][version] = 3.0-rc5

projects[backup_migrate][subdir] = contrib
projects[backup_migrate][version] = 3.1

projects[ctools][subdir] = contrib 

projects[ctools_automodal][subdir] = contrib 

projects[diff][subdir] = contrib
projects[diff][version] = 3.2

projects[entity][subdir] = contrib 

projects[features][subdir] = contrib 

projects[features_extra][subdir] = contrib 

projects[google_analytics][subdir] = contrib 

projects[i18n][subdir] = contrib 

projects[job_scheduler][subdir] = contrib 

projects[jquery_update][subdir] = contrib 

projects[l10n_update][subdir] = contrib 

projects[ldap][subdir] = contrib
projects[ldap][version] = 2.0-beta8

projects[libraries][subdir] = contrib 

projects[login_destination][subdir] = contrib 

projects[menu_firstchild][subdir] = contrib 

projects[menu_trail_by_path][subdir] = contrib 

projects[pathauto][subdir] = contrib 

projects[strongarm][subdir] = contrib 

projects[token][subdir] = contrib 

projects[transliteration][subdir] = contrib 

projects[uuid][subdir] = contrib 

projects[uuid_features][subdir] = contrib 

projects[variable][subdir] = contrib 

projects[views][subdir] = contrib 

projects[views_bulk_operations][subdir] = contrib 

projects[views_slideshow][subdir] = contrib 
projects[views_slideshow][version] = 3.x-dev

projects[wysiwyg][subdir] = contrib 
projects[wysiwyg][version] = 2.x-dev

; Themes

projects[zen][version] = 5.5

projects[ristat][type] = "theme"
projects[ristat][download][type] = "git"
projects[ristat][download][url] = "git@github.com:IISH/drupal-theme-rusrep.git"
projects[ristat][download][branch] = "master"

; Libraries

libraries[ckeditor][type] = libraries
libraries[ckeditor][download][type] = file
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.4.2/ckeditor_4.4.2_standard.zip"
libraries[ckeditor][directory_name] = ckeditor
