class nix_admins {
  @user{ 'alastair': ensure => present,}
  @user{ 'fred':  ensure    => present,}
  @user{ 'bob':  ensure     => present, tag => 'wordpress',}
  @user{ 'sally':  ensure     => present, tag => 'wordpress',}
  @user{ 'joe':  ensure     => present, tag => 'oracle',}
}
