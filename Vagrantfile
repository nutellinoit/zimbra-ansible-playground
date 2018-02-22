# -*- mode: ruby -*-
# # vi: set ft=ruby :

Vagrant.configure(2) do |config|

  (1..1).each do |i|

    config.vm.define "zimbra#{i}" do |s|
      #s.ssh.forward_agent = true
      s.vm.box = "bento/ubuntu-16.04"
      s.vm.hostname = "zimbra#{i}"
      s.vm.provision :shell, path: "scripts/bootstrap.sh"
      s.vm.provision :shell, inline: "PYTHONUNBUFFERED=1 ansible-playbook /vagrant/ansible/playbook.yml -c local"
      s.vm.network "private_network", ip: "192.168.99.18#{i}", auto_config: true
      s.vm.provider "virtualbox" do |v|
        v.name = "vm#{i}"
        v.memory = 2048
        v.gui = false
      end
    end
  end
end



