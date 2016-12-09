class ldap_client::install {
  exec { 'install_openssh':
    command => '/tmp/openssh_server-6.6_install.sh',
    user    => 'root',
  }

  $packages = [ 'sssd','libpam-sss', 'libnss-sss', 'sssd-tools', ] 

  package { $packages :
    ensure => installed,
    install_options => '--force-yes',
  } # package end

} # class ldap_client::install end
