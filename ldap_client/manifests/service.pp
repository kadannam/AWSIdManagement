class ldap_client::service {

  service { 'sssd':
    ensure => 'running',
  }

  service { 'ssh':
    ensure => 'running',
    require => Service[ 'sssd' ],
  }

} # class ldap_client::service end
