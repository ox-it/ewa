class ewa::svn() {
	package { 'subversion':
		ensure => present,
	}

	# Checkout files from SVN
	vcsrepo { 'ewa-svn-checkout':
		path => '/tmp/ewa-svn-checkout',
		ensure   => latest,
		provider => svn,
		source   => 'https://svn.oucs.ox.ac.uk/groups/infodev/projects/ewa',
		basic_auth_username => hiera('ewa::svn::username'),
		basic_auth_password => hiera('ewa::svn::password'),
		require => Package['subversion'],
		owner => 'www-data',
		group => 'www-data',
	}

	# Copy the svn files to the webroot
	file { '/var/www/ewa':
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

	file { '/var/www/ewa/app/Config/database.php':
		ensure => file,
		content => template('ewa/database.php.erb'),
		owner => 'www-data',
		group => 'www-data',
		require => File['/var/www/ewa'],
	}
}