class website (
  $docroot = '/var/www/html/mysite',
  $url = 'alastair.puppetlabs.vm',
)
{
  include apache
  include nix_admins
  #include apache::mod::php
  #include mysql::server
  #include mysql::php

  class {'mysql::server' : config_hash => {'root_password' => 'root'}}


  file {'/var/www' : ensure => directory,}

  apache::vhost { $::fqdn:
    priority   => '10',
    vhost_name => $::fqdn,
    port       => '80',
    docroot    => $docroot,
  }

  class { 'apache::mod::php':}

  package {'php-mysql': notify => Service['httpd'],}


  class { 'wordpress':
    install_dir    => $docroot,
    db_user        => 'wordpress',
    db_password    => 'wordpressx',
    db_host        => 'localhost',
    db_name        => 'wordpress',
    create_db      => true,
    create_db_user => true,
  }

  host { $url : ip => $::ipaddress, }

  Package ['httpd'] -> File[$docroot]

  User <| tag == 'wordpress' |>

}
