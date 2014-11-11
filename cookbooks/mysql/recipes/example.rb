yum_package 'mysql-server'

yum_package 'mysql-server' do
  action :install
end

yum_package 'with_attributes' do
  version '1.0.0'
end

yum_package 'specifying the identity attribute' do
  package_name 'identity_attribute'
end