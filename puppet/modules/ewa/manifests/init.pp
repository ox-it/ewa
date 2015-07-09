class ewa() {
	# Set up the users
	include ewa::users

	# Set up Apache, MySQL and PHP
	include ewa::lamp

	$use_svn = hiera('ewa::svn::enable')
	if $use_svn == true {
		# Clone the repo first, then set up Apache, MySQL and PHP
		include ewa::svn
	} 
}