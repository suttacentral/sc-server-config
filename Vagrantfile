Vagrant.configure("2") do |config|

  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.provision :ansible do |ansible|
    ansible.playbook = 'provision/main.yml'
    ansible.inventory_file = 'provision/hosts'
  end

end
