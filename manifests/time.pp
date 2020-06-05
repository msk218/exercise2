# Class: exercise2::time
#
#
class exercise2::time { 
	class { 'timezone':
 		 timezone => 'CDT',
 		}
	}