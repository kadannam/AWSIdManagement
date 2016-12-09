require 'spec_helper'
describe 'ldap_client' do

  context 'with defaults for all parameters' do
    it { should contain_class('ldap_client') }
  end
end
