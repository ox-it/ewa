class ewa::lamp () {
	# Apache
	class { 'apache':
		default_vhost		=> false,
        default_mods        => true,
        confd_dir 			=> '/etc/apache2/conf-enabled',
        default_confd_files => true,
        purge_configs 		=> false,
        mpm_module => 'prefork',
    } ->

    # Have apache create files and directories that are group writeable
    file_line {'apache-umask':
		path => '/etc/apache2/envvars',
		line => 'umask 002',
		notify => Class['Apache::Service'],
	}

	# Ensure that sites-available and sites-enabled are writeable by the www-data group
    define check_mode($mode) {
		exec { "/bin/chmod ${mode} ${name}":
			onlyif => "[ $(stat -c %a $name) != $mode ]",
		}
	}

	define check_group($group) {
		exec {"chgrp ${group} ${name}":
			onlyif => "[ $(stat -c %G ${name}) != ${group} ]",
		}
	} 

	check_mode { ['/etc/apache2/sites-available', '/etc/apache2/sites-enabled']:
		mode => 775,
	} 

	check_group { ['/etc/apache2/sites-available', '/etc/apache2/sites-enabled']:
		group => $group,
	}

	include ::apache::mod::php, ::apache::mod::rewrite

	file { ['/var/www/ewa', '/var/www/ewa/app']:
		ensure => directory,
		owner => 'www-data',
		group => 'www-data',
	} -> 

	apache::vhost { $fqdn:
        port          => 80,
        docroot       => '/var/www/ewa/app',
        docroot_owner => 'www-data',
        docroot_group => 'www-data',
    }

	# PHP

	# Install the other necessary packages
	package {['php5', 'libapache2-mod-php5', 'php5-mysql']:
		ensure => present,
	}

	$mysql_root_password = hiera('ewa::mysql::root_password')

	$phpmyadmin_password = hiera('ewa::mysql::pma_password')

	class {'phpmyadmin':
		root_password => $mysql_root_password,
		phpmyadmin_password => $phpmyadmin_password,
	}
	
	$ewa_db_username = hiera('ewa::mysql::app_username')

	$ewa_db_password = hiera('ewa::mysql::app_password')

	# MySQL

	# Install and configure MySQL Server
	$mysql_options = {}
	class {	'::mysql::server':
		root_password           => $mysql_root_password,
		remove_default_accounts => true,
		override_options        => $mysql_options,
	}

	# Copy the SQL file to the server
	file {'import.sql':
		path => '/root/import.sql',
		source => 'puppet:///modules/ewa/Dump20150220.sql'
	}

	# Create a database, user and import the SQL file
	mysql::db { 'ewa_db':
		user     => $ewa_db_username,
		password => $ewa_db_password,
		host     => 'localhost',
		grant    => ['ALL'],
		sql      => '/root/import.sql',
		require => File['import.sql'],
	}
}