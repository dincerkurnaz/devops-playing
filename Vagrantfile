# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.define "db" do |db|
    db.vm.box = "centos/7"
    db.vm.hostname = 'db'
    db.vm.box_url = "ubuntu/trusty64"
    #db.vm.provision :shell, inline: "touch dincer"
    db.vm.provision :shell, path: "./db.sh" 

    db.vm.network :private_network, ip: "192.168.56.100"

    db.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "db"]
        end
      end
  config.vm.define "web01" do |web01|
    web01.vm.box = "centos/7"
    web01.vm.hostname = 'web01'
    web01.vm.box_url = "ubuntu/trusty64"
    #web01.vm.provision :shell, inline: "touch dincer"
    web01.vm.provision :shell, path: "./web01.sh" 

    web01.vm.network :private_network, ip: "192.168.56.101"

    web01.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "web01"]
    end
  end
end
