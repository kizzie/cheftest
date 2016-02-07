require 'chef/provisioning/vagrant_driver'

with_driver 'vagrant'

  #nginx machine
  vagrant_box 'webserver' do
    url 'http://files.vagrantup.com/precise64.box'
  end

  # app machine
  # vagrant_box 'app1' do
  #  url 'http://files.vagrantup.com/precise64.box'
  # end

1.upto(2) do |i|
  vagrant_box 'app#{i}' do
    url 'http://files.vagrantup.com/precise64.box'
  end
end
