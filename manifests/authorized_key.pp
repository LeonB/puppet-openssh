define openssh::authorized_key (
	$user,
	$ensure = present,
) {

	Ssh_authorized_key_ng <<| title == $title |>> {
		user => $user,
		# ensure => absent,
	}

}
