class files {

  file {'/etc/cron.allow': ensure => present}

  file_line {'allow root':
    ensure  => present,
    path    => '/etc/cron.allow',
    line    => 'root',
    require => File['/etc/cron.allow'],
  }

  include concat::setup
  concat { '/etc/motd':

  }

  concat::fragment {'motd':
    target => '/etc/motd',
    source => '/tmp/frag',
    order  => 01,
  }

  concat::fragment {'motd2':
    target => '/etc/motd',
    source => '/tmp/frag2',
    order  => 02,
  }
}
