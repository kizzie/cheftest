#
# Cookbook Name:: app
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'go' do
  package_name 'golang'
end

cookbook_file '/app.go' do
  owner 'root'
  group 'root'
  source 'app.go'
  mode '0755'
  action :create
end

bash 'build and run app' do
  code <<-EOH
    cd /
    go build app.go
    ./app &
    EOH
end
