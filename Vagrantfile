# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu-server-12042-x64-vbox4210"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"

  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.provision "shell", path: "install_modules"
  config.vm.provision "shell", inline: "apt-get -qq update"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
  end
end
