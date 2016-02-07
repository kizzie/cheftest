#
# Cookbook Name:: mynginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


package 'install nginx' do
  package_name 'nginx'
  subscribes :restart, 'cookbook_file[/etc/nginx/sites-available/default]', :immediately
end

cookbook_file '/etc/nginx/sites-available/default' do
  owner 'root'
  group 'root'
  source 'default'
  mode '0644'
  action :create
end

cookbook_file '/etc/nginx/nginx.conf' do
  owner 'root'
  group 'root'
  source 'nginx.conf'
  action :create
end
