class copyfile {

  file { '/tmp/file.txt':
    ensure => file,
    #source => 'puppet://proxy.puppetlabs.vm/local/file.txt',
    source => 'puppet:///local/file.txt',
  }

}
