# Class: exercise2::disk_management::part
#
class exercise2::disk_management::part {
	$packages = lookup(exercise2::packages)
	package { $packages:
		ensure => installed,
	}
}