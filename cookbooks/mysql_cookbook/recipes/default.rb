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

include_recipe 'mysql'

mysql_service 'default' do
  version '5.6'
  port '3307'
  data_dir '/data'
  allow_remote_root true
  root_network_acl ['192.168.33.11']
  remove_anonymous_users false
  remove_test_database false
  server_root_password 'mysql'
  action :create
end
