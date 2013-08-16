class databases::admins{

  #  $users_hash = {
  #  'zack@localhost' => {
  #    password_hash  =>  mysql_password('puppetlabs'),
  #    ensure         => present,
  #  },
  #  'monica@localhost' => {
  #    password_hash =>  mysql_password('puppetlabs'),
  #    ensure => present,
  #  },
  #  'luke@localhost' => {
  #    password_hash =>  mysql_password('puppetlabs'),
  #    ensure => present,
  #  },
  #  'brad@localhost' => {
  #    password_hash =>  mysql_password('puppet'),
  #    ensure => present,
  #  },
  #  'ralph@localhost' => {
  #    password_hash =>  mysql_password('puppetlabs'),
  #    ensure => absent,
  #  }

  #}

  #Database_user {
  #  ensure        => present,
  #  password_hash => mysql_password('puppetlabs'),
  #}

  $user_hash = hiera_hash('databases::admins::users')

create_resources(database_user,$users_hash)

#database_user { ['zack@localhost','monica@localhost','luke@localhost']:
#}

#database_user { 'brad@localhost':
#  password_hash => mysql_password('puppet'),
#}

#database_user { 'ralph@localhost':
#  ensure => absent,
#}

}
