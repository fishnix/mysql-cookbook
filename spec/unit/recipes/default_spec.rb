require 'spec_helper'

describe 'mysql::default' do
  let (:chef_run) { ChefSpec::Runner.new(platform: 'centos', version: '6.5').converge('mysql::default') }
    
  it 'should include the mysql::client recipe by default' do
    chef_run.should include_recipe 'mysql::client'
  end
end