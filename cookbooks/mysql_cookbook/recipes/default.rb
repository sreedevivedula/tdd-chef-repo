#
# Cookbook Name:: mysql_cookbook
# Recipe:: default
#
# Copyright 2014, MIFOSX
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

template 'mysql.seed' do
  source 'mysql.preseed.erb'
  path node[:temp_dir]+'/mysql.seed'
  variables({
                :admin_password => node[:admin_password]
            })
  mode '0755'
  owner 'root'
  group 'root'
end

execute 'Set MySQL Preseed Selections' do
  command 'debconf-set-selections ' + node[:temp_dir] + '/mysql.seed'
end

execute 'apt-get update' do
  command 'sudo apt-get update'
end

apt_package 'mysql-server' do
  action :install
end