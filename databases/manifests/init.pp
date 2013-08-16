class databases {

  include ::mysql::server

  database { 'alastair':
    ensure =>  present,
  }

  database { 'mediawiki':
    ensure =>  present,
  }

}
