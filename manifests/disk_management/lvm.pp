# Class: execise2::disk_management::lvm
#
#
class execise2::disk_management::lvm {
	# Create a hash from Hiera Data with the Users
	$physical_volume = hiera('exercise2::physical_volume', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(physical_volume, $physical_volume)
	# Create a hash from Hiera Data with the Users
	$volume_group = hiera('exercise2::volume_group', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(volume_group, $volume_group)
	# Create a hash from Hiera Data with the Users
	$logical_volume = hiera('exercise2::logical_volume', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(logical_volume, $logical_volume)
	# Create a hash from Hiera Data with the Users
	$filesystem = hiera('exercise2::filesystem', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(filesystem, $filesystem)
