# -*- mode: ruby -*-

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision :salt do |salt|
    salt.run_highstate = true
    salt.minion_config = "salt/minion.conf"
    salt.bootstrap_script = "bootstrap"

    # uncomment to see salt debug output during vagrant provision
    # salt.verbose = true
  end
end
