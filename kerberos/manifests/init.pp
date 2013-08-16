class kerberos {
  
  augeas { 'krb5.conf':
    context => '/files/etc/krb5.conf/libdefaults',
    changes  => 'set default_realm PUPPETLABS.VM',
  }
}
