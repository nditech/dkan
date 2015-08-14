api = 2
core = 7.x

includes[core] = drupal-org-core.make

; Profile

projects[dkan][type] = profile
projects[dkan][download][type] = git
projects[dkan][download][url] = https://github.com/nditech/dkan.git
projects[dkan][download][branch] = 7.x-1.x

includes[] = ndi/ndi-additions.make
