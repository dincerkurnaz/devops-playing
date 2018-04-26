Vagrant.configure(2) do |config|
  config.vm.box = "geerlingguy/ubuntu1604"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  # If errors occur, try running "vagrant provision" manually
  # after "vagrant up"
  config.vm.provision :docker
  # To use docker_compose as a provisioning tool, install
  # vagrant-docker-compose plugin first. It should also solve the
  # "The '' provisioner could not be found." error:
  # $ vagrant plugin install vagrant-docker-compose
  config.vm.provision :docker_compose, rebuild: true, run: "always", yml: "/vagrant/docker-compose.yml"
end
