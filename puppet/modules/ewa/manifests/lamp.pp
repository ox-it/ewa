class ewa::lamp () {
	# Apache
	class { 'apache':
		default_vhost		=> false,
        default_mods        => true,
        confd_dir 			=> '/etc/apache2/conf-enabled',
        default_confd_files => true,
        mpm_module => 'prefork',
    } ->

    # Have apache create files and directories that are group writeable
	augeas {'apache-umask':
		context => '/files/etc/apache2/envvars',
		changes => [
			'set umask 002',
		],
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
		group => 'www-data',
	}

	include ::apache::mod::php, ::apache::mod::rewrite

	apache::vhost { $fqdn:
        port          => 80,
        docroot       => '/var/www/ewa/app',
        manage_docroot=> false,
        directories  => [
		    { path           => '/var/www/ewa/app',
		      allow_override => ['All'],
		    },
		],
        # docroot_owner => 'www-data',
        # docroot_group => 'www-data',
        require => File['/var/www/ewa'],
    }

	# PHP

	# Install the other necessary packages
	package {['php5', 'libapache2-mod-php5', 'php5-mysql', 'php-apc']:
		ensure => present,
		notify => Class['Apache::Service'],
        require => Class['apache::mod::php'],
	}

	augeas { 'set-php-timezone':
		context => '/files/etc/php5/apache2/php.ini',
        changes => [
            'set Date/date.timezone "Europe/London"',
            # Enable and configure the built in opcache
			'set opcache/opcache.enable 1',
			'set opcache/opcache.enable_cli 1',
			'set opcache/opcache.memory_consumption 128',
			'set opcache/opcache.max_accelerated_files 12000',
			# Enable error display
            'set PHP/display_errors On',
            # For performance
            'set PHP/realpath_cache_size 4096k',
        ],
        notify => Class['Apache::Service'],
        require => Class['apache::mod::php'],
	}

	# MySQL

	# Install and configure MySQL Server
	$mysql_root_password = hiera('ewa::mysql::root_password')
	$mysql_options = {}
	class {	'::mysql::server':
		root_password           => $mysql_root_password,
		remove_default_accounts => true,
		override_options        => $mysql_options,
	}

	# Copy the SQL file to the server
	file {'import.sql':
		path => '/root/import.sql',
		source => 'puppet:///modules/ewa/ewa_db-20150709.sql'
	}

	# Create a database, user and import the SQL file
	mysql::db { 'ewa_db':
		user     => hiera('ewa::mysql::app_username'),
		password => hiera('ewa::mysql::app_password'),
		host     => 'localhost',
		grant    => ['ALL'],
		sql      => '/root/import.sql',
		require => File['import.sql'],
	}

	# phpMyAdmin
	class {'phpmyadmin':
		root_password => $mysql_root_password,
		phpmyadmin_password => hiera('ewa::mysql::pma_password'),
	}
}