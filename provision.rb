machine_batch do
  machine 'webserver' do
    recipe 'mynginx'
  end
  # Create 2 application machines
  #1.upto(2) do |i|
  #  machine "app#{i}" do
  #    recipe '???'
  #  end
  #end
end
