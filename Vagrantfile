# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "ubuntu-trusty64" do |ubuntu|
    ubuntu.vm.box = "ubuntu/trusty64"
    ubuntu.vm.network :private_network, ip: "192.168.33.21"
    ubuntu.vm.hostname = "ubuntu-trusty64"
    ubuntu.vm.network :forwarded_port, id: "ssh", guest: 22, host: 3321

    ubuntu.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
    end
    ubuntu.vm.provision "shell", path: "provision/script/ubuntu.sh"
  end

  config.vm.define "centos65" do |centos|
    centos.vm.box = "chef/centos-6.5"
    centos.vm.network :private_network, ip: "192.168.33.22"
    centos.vm.hostname = "ansible-centos65"
    centos.vm.network :forwarded_port, id: "ssh", guest: 22, host: 3322

    centos.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
    end
    centos.vm.provision "shell", path: "provision/script/centos.sh"
  end

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

end
