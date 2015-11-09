# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "ubuntu_trusty64", primary: true do |ubuntu_trusty64|
    ubuntu_trusty64.vm.box = "ubuntu/trusty64"

    # link scripts
    ubuntu_trusty64.vm.synced_folder "scripts/", "/home/vagrant/scripts"

    # link yaowst
    ubuntu_trusty64.vm.synced_folder "../node-yaowst", "/home/vagrant/yaowst", type: "rsync", rsync__exclude: [".git/", "node_modules/"]

    # run install script
    ubuntu_trusty64.vm.provision "shell", path: "scripts/install_debian.sh"
  end

  config.vm.define "ubuntu_trusty32" do |ubuntu_trusty32|
    ubuntu_trusty32.vm.box = "ubuntu/trusty32"

    # link scripts
    ubuntu_trusty32.vm.synced_folder "scripts/", "/home/vagrant/scripts"

    # link yaowst
    ubuntu_trusty32.vm.synced_folder "../node-yaowst", "/home/vagrant/yaowst", type: "rsync", rsync__exclude: [".git/", "node_modules/"]

    # run install script
    ubuntu_trusty32.vm.provision "shell", path: "scripts/install_debian.sh"
  end
end
