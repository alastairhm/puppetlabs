class hosts{
@@host { 'alastair.puppetlabs.vm':
  ensure => 'present',
  ip     => '10.0.2.15',
  target => '/etc/hosts',
  tag    => 'classroom',
}
host { 'need.coffee.com':
  ensure => 'present',
  ip     => '10.0.2.155',
  target => '/etc/hosts',
  tag    => 'classroom',
}

host { 'got-cookies.com':
    ensure     => 'present',
      ip       => '10.0.2.151',
        target => '/etc/hosts',
          tag  => 'classroom',
}
host { 'dont.drink.the.coffee.com':
    ensure     => 'present',
      ip       => '10.0.2.156',
        target => '/etc/hosts',
          tag  => 'classroom',
}

host { 'Come.To.Portland.com':
      ensure                      => 'present',
            ip                    => '10.0.2.157',
                    target        => '/etc/hosts',
                              tag => 'classroom',
}

host { 'localhost':
  ensure       => 'present',
  host_aliases => ['localhost.localdomain', 'localhost4', 'localhost4.localdomain4', 'alastair.puppetlabs.vm', 'alastair'],
  ip           => '127.0.0.1',
  target       => '/etc/hosts',
}
host { 'localhost.localdomain':
  ensure       => 'present',
  host_aliases => ['localhost'],
  ip           => '127.0.0.1',
  target       => '/etc/hosts',
}
host { 'master':
  ensure       => 'present',
  host_aliases => ['master.puppetlabs.vm', 'classroom.puppetlabs.vm', 'puppet', 'classroom'],
  ip           => '10.0.1.16',
  target       => '/etc/hosts',
}

#resources { 'host': purge => true }

Host <<| tag == 'classroom' |>>

}
