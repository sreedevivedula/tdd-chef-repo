require 'chefspec'

describe 'mysql::install' do

  let(:chef_run) {
    ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '12.04').converge(described_recipe)
  }

  it 'installs mysql' do
    expect(chef_run).to install_apt_package('mysql-server')
  end

end

describe 'mysql::install' do

  let(:chef_run) {
    ChefSpec::SoloRunner.new(platform: 'centos', version: '6.4').converge(described_recipe)
  }

  it 'installs mysql for CentOS 6.4' do
    expect(chef_run).to install_yum_package('mysql-server')
  end

  it 'starts mysql service for CentOS 6.4' do
    expect(chef_run).to start_service('mysqld')
  end

end
