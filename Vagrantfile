# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	
	config.vagrant.plugins = ["vagrant-disksize", "vagrant-vbguest"]

	config.disksize.size = "40GB"

  config.vm.box = "ubuntu/xenial64"
	config.vm.hostname = "jiseong"
  config.vm.define "khack"

  config.vm.provider "virtualbox" do |vb|
		vb.name = "khack"
    vb.memory = "8192"
		vb.cpus = "4"
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
	end

  config.vm.provision "bootstrap", type: "shell",
			privileged: true, run: "always" do |s|
		s.path = "scripts/bootstrap.sh"
	end

	config.vm.provision "vim", type: "shell",
			privileged: false, run: "never"  do |v|
		v.path = "scripts/setup_vim.sh"
	end

	config.vm.provision "kernel", type: "shell",
			privileged: false, run: "never" do |k|
		k.path = "scripts/download_kernel.sh"
  end 

	ENV['LC_ALL'] = "en_US.UTF-8"

end
