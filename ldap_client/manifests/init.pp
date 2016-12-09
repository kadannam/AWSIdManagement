# == Class: ldap_client
#
# Ubuntu LDAP client using ldap_client. 
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'ldap_client':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name drowston.sre@gmail.com 
#
# === Copyright
#
# Copyright 2016 David A. Rowston
#

class ldap_client {
  anchor { '::ldap_client::begin': } ->
  class { '::ldap_client::pre_install': } ->
  class { '::ldap_client::install': } ->
  class { '::ldap_client::config': } ~>
  class { '::ldap_client::service': } 
  anchor { '::ldap_client::end': }

  Class['ldap_client::pre_install'] ~> Class['ldap_client::service']
  #Class['ldap_client::pre_install'] ~> Class['ldap_client::service']

} # class ldap_client end
