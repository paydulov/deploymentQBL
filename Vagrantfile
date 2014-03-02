Vagrant::Config.run do |config|
  config.vm.box = "centos_6_x64"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box"
  config.vm.forward_port 8080, 8080
  config.vm.provision :shell, :path => "https://dl.dropboxusercontent.com/u/9937469/bootstrap.sh"
end
