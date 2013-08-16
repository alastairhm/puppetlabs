class webapp::wordpress inherits webapp
{

  class { '::wordpress':
        install_dir    => $docroot,
        db_user        => 'wordpress',
        db_password    => 'wordpressx',
        db_host        => 'localhost',
        db_name        => 'wordpress',
        create_db      => true,
        create_db_user => true,
  }

}
