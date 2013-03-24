class openssh::server::service {

	service { 'ssh':
		ensure     => running,
		hasstatus  => true,
		hasrestart => true,
		enable     => true,
		require    => Class['openssh::server::package'],
	}
}
