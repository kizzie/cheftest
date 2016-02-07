#!/bin/bash

#setup for everything
gem install chef-provisioning chef-provisioning-vagrant
export CHEF_DRIVER=vagrant
export VAGRANT_DEFAULT_PROVIDER=virtualbox

#build the code -- this isn't very elegent!
#go build src/app.go
#mv app cookbooks/app/files/

#bring the boxes up
#configure boxes
#may need sudo - test this?
chef-client -z servers.rb provision.rb

#say how to get to the machine
echo '*******************************************************'
echo 'To see the app point a browser at http://localhost:8080'
echo '*******************************************************'
