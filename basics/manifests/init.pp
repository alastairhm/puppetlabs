class basics {

  $os_msg = $::osfamily ?  {
    'redhat' => 'This is a Redhat box',
    'debian' => 'This is a Debian box',
    default  => fail('This $::osfamily type is unsupported')
  }

  if $::ipaddress =~ /10.0./ {
      $nat_msg = 'Nat IP address'
  }
  else
  {
      $nat_msg = 'Non Nat IP address'
  }

  case $::virtual {
    'Virtualbox' : {$vm_msg = 'Virtualbox Machine'}
    'VMware'     : {$vm_msg = 'VMWare Machine'}
    default      : {$vm_msg = 'Real machine'}
  }

  File {
    ensure => 'file',
  }

  file { '/etc/shells':
    source => 'puppet:///modules/basics/shells',
  }

  file {'/etc/motd':
    content => template('basics/motd.erb'),
  }

}

