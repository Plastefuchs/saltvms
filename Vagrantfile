

# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/trusty32"
    master.vm.host_name = "master"
    master.vm.network :private_network, ip: "192.168.56.102"
    master.vm.provision :shell, path: "salt-master-bootstrap.sh"
  end

  config.vm.define "minion" do |minion|    
    minion.vm.box = "ubuntu/trusty32"
    minion.vm.host_name = "minion"
    minion.vm.network :private_network, ip: "192.168.56.103"
    minion.vm.provision :salt do |salt|
      salt.run_highstate = true
      salt.minion_config = "./minion.conf"
      salt.minion_key = "./minion.pem"
      salt.minion_pub = "./minion.pub"
    end 
  end  

end