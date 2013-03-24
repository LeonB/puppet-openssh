class openssh::server::config {

	augeas { "/etc/ssh/sshd_config":
		context => '/files/etc/ssh/sshd_config',
		changes => [
			'set PermitRootLogin no',
		],
		notify  => Class['openssh::server::service'],
	}

}
