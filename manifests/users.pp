# Class: exercise2::users
#
#
class exercise2::users {
	group { 'Andrews_Group':
		gid => '1020',
		}
	# Create a hash from Hiera Data with the Users
	$myUsers = hiera('exercise2::users', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(user, $myUsers)

}