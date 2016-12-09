class ldap_client::config {

file { '/etc/ssl/certs/ca-ldap_client.crt':
  ensure => present,
  owner => 'root',
  group => 'root',
  mode => 0644,
  source => 'puppet:///modules/ldap_client/ca-ldap_client.crt',
  } # file end

file { '/etc/sssd/sssd.conf':
  ensure => present,
  owner => 'root',
  group => 'root',
  mode => 0600,
  source => 'puppet:///modules/ldap_client/sssd.conf',
  } # file end

file { '/etc/nsswitch.conf':
  ensure => present,
  owner => 'root',
  group => 'root',
  mode => 0644,
  source => 'puppet:///modules/ldap_client/nsswitch.conf',
  } # file end

file { '/etc/pam.d/common-auth':
  ensure => present,
  owner => 'root',
  group => 'root',
  mode => 0644,
  source => 'puppet:///modules/ldap_client/common-auth',
  } # file end

file { '/etc/pam.d/common-password':
  ensure => present,
  owner => 'root',
  group => 'root',
  mode => 0644,
  source => 'puppet:///modules/ldap_client/common-password',
  } # file end

file { '/etc/pam.d/common-session':
  ensure => present,
  owner => 'root',
  group => 'root',
  mode => 0644,
  source => 'puppet:///modules/ldap_client/common-session',
  } # file end

file { '/etc/ssh/sshd_config':
  ensure => present,
  owner => 'root',
  group => 'root',
  mode => 0644,
  source => 'puppet:///modules/ldap_client/sshd_config',
  } # file end

file { '/etc/ldap/ldap.conf':
  ensure => present,
  owner => 'root',
  group => 'root',
  mode => 0644,
  source => 'puppet:///modules/ldap_client/ldap.conf',
  } # file end

} # class ldap_client::config end
