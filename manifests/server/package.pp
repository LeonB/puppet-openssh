class openssh::server::package {

	package  { $openssh::server::package_name:
		ensure => $openssh::server::ensure,
	}

}
