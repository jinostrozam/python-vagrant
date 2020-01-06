# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu1804"
    config.vm.box_check_update = true
  
  
    config.vm.provider :libvirt do |kvm|
      kvm.random :model => 'random'
      kvm.cpu_mode = 'host-passthrough'
      kvm.driver = 'kvm'
      kvm.memory  = 4096
      kvm.cpus    = 4
    end   
  
    config.ssh.forward_agent = true
  
    config.vm.define "python1" do |python1|
      python1.vm.hostname = "python1"
  
      python1.vm.network :private_network,
        ip: '192.168.180.10',
        libvirt_netmask: '255.255.255.0',
        libvirt__network_name: 'python',
        autostart: true,
        libvirt__forward_mode: 'route',
        libvirt__dhcp_enabled: false 
  
      python1.vm.provision :hosts do |provisioner|
        provisioner.autoconfigure = false
        provisioner.add_host '127.0.0.1', ['python1.example.local', 'python1']
      end
      
      python1.vm.provision :shell, inline: "echo -e 'nameserver 8.8.8.8\nnameserver 8.8.4.4\n' > /etc/resolv.conf"
      python1.vm.provision :shell, inline: 'apt-get update && apt-get -y install apt-transport-https zsh git curl vim tree wget build-essential libffi-dev libgdbm-dev libc6-dev libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libncurses5-dev libncursesw5-dev xz-utils tk-dev'
      #python1.vm.provision :shell, inline: "echo -e 'deb http://ftp.cl.debian.org/debian stretch main non-free contrib\n\ndeb http://ftp.cl.debian.org/debian-security/ stretch/updates main contrib non-free\n\ndeb http://deb.debian.org/debian stretch-backports main contrib non-free' > /etc/apt/sources.list"
      #python1.vm.provision :shell, inline: "echo -e 'Package: *\nPin: release a=stretch-backports\nPin-Priority: 500' > /etc/apt/preferences"
      #python1.vm.provision :shell, inline: 'apt-get update && apt-get -y install apt-transport-https zsh git curl vim tree'
      #linuxfoundation.vm.provision :shell, inline: 'apt-get update && apt-get -y install apt-transport-https zsh git curl && apt-get -y dist-upgrade'

      #python1.vm.provision "shell", path: "python-install.sh"


      #python1.vm.synced_folder './shared/', '/shared', nfs: true, nfs_version: 3, nfs_udp: true
  
      #linuxfoundation.vm.provision :shell, :path   => "shell/defaults.sh"
      #linuxfoundation.vm.provision :shell, :inline => "/usr/bin/puppet apply --modulepath=/opt/autentia-web-repo-jaime/puppet/modules --disable_warnings deprecations /opt/autentia-web-repo-jaime/puppet/manifests/init.pp"

    end

    config.vm.define "python2" do |python2|
      python2.vm.hostname = "python2"
   
      python2.vm.network :private_network,
        ip: '192.168.180.20',
        libvirt_netmask: '255.255.255.0',
        libvirt__network_name: 'python',
        autostart: true,
        libvirt__forward_mode: 'route',
        libvirt__dhcp_enabled: false 
    
      python2.vm.provision :hosts do |provisioner2|
         provisioner2.autoconfigure = false
         provisioner2.add_host '127.0.0.1', ['python2.example.local', 'python2']
      end
        
        python2.vm.provision :shell, inline: "echo -e 'nameserver 8.8.8.8\nnameserver 8.8.4.4\n' > /etc/resolv.conf"
        #python2.vm.provision :shell, inline: "echo -e 'deb http://ftp.cl.debian.org/debian stretch main non-free contrib\n\ndeb http://ftp.cl.debian.org/debian-security/ stretch/updates main contrib non-free\n\ndeb http://deb.debian.org/debian stretch-backports main contrib non-free' > /etc/apt/sources.list"
        #python2.vm.provision :shell, inline: "echo -e 'Package: *\nPin: release a=stretch-backports\nPin-Priority: 500' > /etc/apt/preferences"
        #python2.vm.provision :shell, inline: 'apt-get update && apt-get -y install apt-transport-https zsh git curl vim tree'
        #linuxfoundation-client.vm.provision :shell, inline: 'apt-get update && apt-get -y install apt-transport-https zsh git curl && apt-get -y dist-upgrade'
  
        
        #python2.vm.synced_folder './shared/', '/shared', nfs: true, nfs_version: 3, nfs_udp: true
    
        #linuxfoundation.vm.provision :shell, :path   => "shell/defaults.sh"
        #linuxfoundation.vm.provision :shell, :inline => "/usr/bin/puppet apply --modulepath=/opt/autentia-web-repo-jaime/puppet/modules --disable_warnings deprecations /opt/autentia-web-repo-jaime/puppet/manifests/init.pp"
  
    end
   
    ##config.vm.define "lfcs3" do |lfcs3|
    ##  lfcs3.vm.hostname = "lfcs3"
   
 ##     lfcs3.vm.network :private_network,
 ##       ip: '192.168.170.30',
 ##       libvirt_netmask: '255.255.255.0',
 ##       libvirt__network_name: 'lfcs',
 ##       autostart: true,
 ##       libvirt__forward_mode: 'route',
 ##       libvirt__dhcp_enabled: false 
    
 ##     lfcs3.vm.provision :hosts do |provisioner2|
 ##        provisioner2.autoconfigure = false
 ##        provisioner2.add_host '127.0.0.1', ['lfcs3.example.local', 'lfcs3']
 ##     end
        
 ##       lfcs3.vm.provision :shell, inline: "echo -e 'nameserver 8.8.8.8\nnameserver 8.8.4.4\n' > /etc/resolv.conf"
        #python2.vm.provision :shell, inline: "echo -e 'deb http://ftp.cl.debian.org/debian stretch main non-free contrib\n\ndeb http://ftp.cl.debian.org/debian-security/ stretch/updates main contrib non-free\n\ndeb http://deb.debian.org/debian stretch-backports main contrib non-free' > /etc/apt/sources.list"
        #python2.vm.provision :shell, inline: "echo -e 'Package: *\nPin: release a=stretch-backports\nPin-Priority: 500' > /etc/apt/preferences"
        #lfcs3.vm.provision :shell, inline: 'apt-get update && apt-get -y install apt-transport-https zsh git curl vim tree'
        #linuxfoundation-client.vm.provision :shell, inline: 'apt-get update && apt-get -y install apt-transport-https zsh git curl && apt-get -y dist-upgrade'
  
        
        #python2.vm.synced_folder './shared/', '/shared', nfs: true, nfs_version: 3, nfs_udp: true
    
        #linuxfoundation.vm.provision :shell, :path   => "shell/defaults.sh"
        #linuxfoundation.vm.provision :shell, :inline => "/usr/bin/puppet apply --modulepath=/opt/autentia-web-repo-jaime/puppet/modules --disable_warnings deprecations /opt/autentia-web-repo-jaime/puppet/manifests/init.pp"
  
  ##  end
    
end

#### add user jaime for management purpose
### adduser jaime
### usermod -aG sudo jaime