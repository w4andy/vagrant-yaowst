# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "ubuntu_trusty64", primary: true do |ubuntu_trusty|
    ubuntu_trusty.vm.box = "ubuntu/trusty64"

    # link scripts
    config.vm.synced_folder "scripts/", "/home/vagrant/scripts"

    # link yaowst
    config.vm.synced_folder "../node-yaowst", "/home/vagrant/yaowst", type: "rsync", rsync__exclude: [".git/", "node_modules/"]

    # run install script
    config.vm.provision "shell", path: "scripts/install_debian.sh"

  end
end
