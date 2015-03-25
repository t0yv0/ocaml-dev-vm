# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "terrywang/vagrantboxes/archlinux-x86_64"
  config.vm.box_url = "http://cloud.terry.im/vagrant/archlinux-x86_64.box"
  config.vm.provision "shell", path: "provision.sh"

  config.vm.provider :virtualbox do |vb|
     vb.gui = true
     vb.name = "ocaml-dev-vm"
     vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
end
