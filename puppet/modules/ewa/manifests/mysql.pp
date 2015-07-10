class ewa::mysql($root_password) {
	# MySQL

	# Install and configure MySQL Server
	$mysql_options = {}

	case $virtual {
		'docker': { $service_provider = 'base' }
		default: { $service_provider = 'upstart' }
	}

	class {	'::mysql::server':
		root_password           => $root_password,
		remove_default_accounts => true,
		override_options        => $mysql_options,
		service_provider		=> $service_provider,
	}

	# Copy the SQL file to the server
	file {'import.sql':
		path => '/root/import.sql',
		source => 'puppet:///modules/ewa/ewa_db-20150709.sql',
		require => Class['::Mysql::Server'],
	}
}