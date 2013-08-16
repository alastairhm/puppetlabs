class webapp (
  $docroot = '/var/www/html/mysite2',
  $url = 'alastair2.puppetlabs.vm',
)
{
  include apache
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

  host { $url : ip => $::ipaddress, }

  Package ['httpd'] -> File[$docroot]
}
