;; Modules ;;

api = 2
core = 7.x

projects[hierarchical_select][version] = 3.0-beta2
projects[hierarchical_select][subdir] = contrib
projects[quicktabs][version] = 3.6
projects[quicktabs][subdir] = contrib
projects[better_exposed_filters][version] = 3.2
projects[better_exposed_filters][subdir] = contrib

projects[elections][type] = module
projects[elections][download][type] = git
projects[elections][download][url] = https://github.com/nditech/elections_module.git
projects[elections][download][branch] = master
projects[elections][subdir] = ndi

;; Themes ;;

projects[ndi_dkan][type] = theme
projects[ndi_dkan][download][type] = "git"
projects[ndi_dkan][download][url] = "https://fb075e082fb65cd78a190d917424520631c74802@github.com/nditech/ndi_dkan_theme.git"
projects[ndi_dkan][download][branch] = "master"
projects[ndi_dkan][subdir] = ndi
