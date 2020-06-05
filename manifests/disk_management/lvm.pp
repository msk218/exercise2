# Class: exercise2::disk_management::lvm
#
#
class exercise2::disk_management::lvm {
	# Create a hash from Hiera Data with the Users
	$myphysical_volume = hiera('exercise2::physical_volume', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(physical_volume, $myphysical_volume)
	}