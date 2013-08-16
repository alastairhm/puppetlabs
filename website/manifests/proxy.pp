class website::proxy {
  @@haproxy::balancermember { "wordpress::${::fqdn}":
    listening_service => 'wordpress00',
    server_names      => $::hostname,
    #ipaddresses       => $::ipaddress,
    ipaddresses       => '10.0.1.5',
    ports             => '80',
    options           => 'check',
  }
}
