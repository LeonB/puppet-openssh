class openssh::server(
	$package_name  = params_lookup( 'package_name' ),
	$enabled       = params_lookup( 'enabled' ),
  ) inherits openssh::server::params {

  	$ensure = $enabled ? {
  		true => present,
  		false => absent
  	}

	include openssh::server::package, openssh::server::config, openssh::server::service
}
