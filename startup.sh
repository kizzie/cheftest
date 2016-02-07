#!/bin/bash

#setup for everything
gem install chef-provisioning chef-provisioning-vagrant
export CHEF_DRIVER=vagrant
export VAGRANT_DEFAULT_PROVIDER=virtualbox

#bring the boxes up
#configure boxes
chef-client -z servers.rb provision.rb
