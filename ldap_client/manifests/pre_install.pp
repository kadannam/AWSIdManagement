class ldap_client::pre_install {

  file { '/tmp/openssh_server-6.6_install.sh':
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0700,
    source => 'puppet:///modules/ldap_client/openssh_server-6.6_install.sh',
    } # file end

  file { '/etc/apt/sources.list.d/sssd-updates-precise.list':
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0644,
    source => 'puppet:///modules/ldap_client/sssd-updates-precise.list',
    } # file end

  exec { 'apt_update':
    command => '/usr/bin/apt-get update',
    require => File['/etc/apt/sources.list.d/sssd-updates-precise.list'],
    user    => 'root',
  } # exec end

} # class ldap_client::pre_install end
