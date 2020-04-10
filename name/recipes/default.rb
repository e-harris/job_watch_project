#
# Cookbook:: name
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end


package 'python3-pip'


directory '/home/vagrant/app' do
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end

directory '/home/vagrant/Downloads' do
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end

remote_directory '/home/vagrant/app' do
  source 'app'
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end


bash 'pip install requirements.txt' do
  code <<-EOL
  pip3 install -r /home/vagrant/app/requirements.txt
  EOL
end
