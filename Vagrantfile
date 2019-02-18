# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |vb|
    vb.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ]
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook       = "spec/playbook.yml"
    ansible.inventory_path = "spec/inventory"
    ansible.install_mode   = "pip"
  end

  if Vagrant.has_plugin?('vagrant-serverspec')
    config.vm.provision :serverspec do |spec|
      spec.pattern = 'spec/localhost/*_spec.rb'
    end
  else
    puts "Notice: installing vagrant-serverspec plugin is recommended"
  end
end
