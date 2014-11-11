# require 'chefspec'
#
# describe 'mysql::install' do
#
#   let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }
#
#   it 'installs a yum_package with the default action' do
#     expect(chef_run).to install_yum_package('mysql-server')
#   end
#
# end