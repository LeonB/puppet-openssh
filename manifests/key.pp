define openssh::key (
  $key,
  $type = 'ssh-rsa',
) {

  @@ssh_authorized_key_ng { $name:
    key      => $key,
    type     => $type,
  }

}
