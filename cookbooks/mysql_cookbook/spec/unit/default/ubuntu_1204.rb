require 'chefspec'

describe 'mysql_cookbook::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs wget' do
    expect(chef_run).to install_package('wget')
  end
end