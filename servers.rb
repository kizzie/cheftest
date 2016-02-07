#require 'chef/provisioning'

require 'chef/provisioning/vagrant_driver'
with_driver 'vagrant'

vagrant_box 'webserver' do
  url 'http://files.vagrantup.com/precise64.box'
end

#1.upto(2) do |i|
#  vagrant_box 'app#{i}' do
#    url 'http://files.vagrantup.com/precise64.box'
#  end
#end

with_machine_options :vagrant_options => {
  'vm.box' => 'ubuntu/trusty64',
  'vm.network' => ':forwarded_port, guest: 80, host: 8080'
}
