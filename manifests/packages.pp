# Class: exercise2::packages
#
class exercise2::packages {
	$packages = lookup(exercise2::packages)
	package { $packages:
		ensure => installed,
	}
}