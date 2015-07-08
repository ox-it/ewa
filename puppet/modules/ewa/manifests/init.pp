class ewa() {
	include ewa::lamp

	package { 'subversion':
		ensure => present,
	}
	
	$use_svn = hiera('ewa::svn::enable')
	if $use_svn == true {
		$subverion_username = hiera('ewa::svn::username')
		$subverion_password = hiera('ewa::svn::password')
	}

	# Set up the users
	include ewa::users

	# Checkout files from SVN
	case $use_svn {
		true, 'true': {
			vcsrepo { 'ewa-svn-checkout':
				path => '/tmp/ewa-svn-checkout',
				ensure   => latest,
				provider => svn,
				source   => 'https://svn.oucs.ox.ac.uk/groups/infodev/projects/ewa',
				basic_auth_username => $subverion_username,
				basic_auth_password => $subverion_password,
				require => Package['subversion'],
				owner => 'www-data',
				group => 'www-data',
			}

			# Copy the svn files to the webroot
			file { 'copy-web-files':
				path => '/var/www/ewa',
				ensure => directory,
				owner => 'www-data',
				group => 'www-data',
				recurse => true,
				# purge => true,
				force => true,
				source => '/tmp/ewa-svn-checkout',
				ignore => ['\.svn', 'site', 'frontend'],
				require => Vcsrepo['ewa-svn-checkout'],
			}
		}
	}
}