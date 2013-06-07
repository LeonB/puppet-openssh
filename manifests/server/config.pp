class openssh::server::config {

    augeas { '/etc/ssh/sshd_config/PermitRootLogin':
        context => '/files/etc/ssh/sshd_config',
        changes => [
            'set PermitRootLogin no',
        ],
        notify  => Class['openssh::server::service'],
    }

    augeas { '/etc/ssh/sshd_config/AcceptEnv':
        context => '/files/etc/ssh/sshd_config',
        onlyif  => 'match AcceptEnv/*[.="GIT_*"] size == 0',
        changes => [
            'set AcceptEnv/01 "GIT_*"',
        ],
        notify  => Class['openssh::server::service'],
    }

}
