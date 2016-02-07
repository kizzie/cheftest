machine_batch do

##nginx machine setup
  webserveroptions = {
    vagrant_options: {
      'vm.box' => 'ubuntu/trusty64',
      'vm.network' => ':forwarded_port, guest: 80, host: 8080'
    },
  }

  machine 'webserver' do
    recipe 'mynginx'
    machine_options webserveroptions
  end

## app server machine setup
  appoptions = {
     vagrant_options: {
       'vm.box' => 'ubuntu/trusty64',
       'vm.network' => ':forwarded_port, guest: 8484, host: 8484'
     },
   }

   machine 'app1' do
     recipe 'app'
     machine_options appoptions
   end


  #1.upto(2) do |i|
  #  machine "app#{i}" do
  #    recipe 'app'
  #  end
  #end
end
