# -*- mode: ruby -*-

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.provision :salt do |salt|
    salt.minion_config = "salt/minion.conf"
  end
end
