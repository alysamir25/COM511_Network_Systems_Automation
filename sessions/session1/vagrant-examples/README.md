[Main Menu](../../../sessions/README.md)|[Session1](../../session1/) | [Vagrant Examples](../../session1/vagrant-examples)

# VAGRANT

[Vagrant](https://developer.hashicorp.com/vagrant) is an open-source tool by HashiCorp that simplifies creating and managing portable, reproducible development environments using virtual machines (VMs). 
It is very similar in function to `docker compose`

We are using Vagrant for Windows with VirtualBox

Vagrant can work with other virtualisation platforms including Vmware, docker and KVM/libvirt. 
However most of the documentation seems to prefer VirtualBox so this seems the most sensible choice. 

Vagrant can also be installed on Apple MAC and linux computers but I will leave that to your own research. 
Note that the processor must match the processor associated with the box (mostly AMD64).

(Note Vagrant is already installed on the university lab PCs)

You can download Vagrant from [install vagrant](https://developer.hashicorp.com/vagrant/install)

Normally Vagrant stores downloaded `.box` files and other user configuration in your windows local settings e.g `C:\Users\YourUser\.vagrant.d\`

However this can mean that the boxes are stored on a one drive or other network drive, so I prefer to make sure they are stored on the local C drive. 
The location is set using the VAGRANT_HOME variable

(in the university lab VAGRANT_HOME is set to D:/vagranthome)

```
setx VAGRANT_HOME C:\devel\vagrant\vagranthome
```
(setx a command-line tool to permanently create or modify user or system environment variables, writing them to the registry for future command prompt sessions)

# Building your first vagrant machine

If you have installed VM's manually, you will realise that it is time consuming and error prone. 
Vagrant provides a way to automate the process of getting started with a standard configuration of virtual machine.

Vagrant is very easy to get started. 

Vagrant provide a number of pre-built `boxes` in the 'vagrant cloud' which are the starting point for creating a local machine.

See for instance [Rocky Linux 9.6](https://portal.cloud.hashicorp.com/vagrant/discover/bento/rockylinux-9.6)

Create a new empty folder and name it WITH NO SPACES IN THE NAME .

In the new folder, Initialise a new vagrant project using the pre-defined rocky linux box

```
vagrant init bento/rockylinux-9.6 --box-version 202510.26.0
```
This will create a `Vagrantfile` and a `.vagrant` folder in your folder. 

The `Vagrantfile` is a recipe (written in the ruby language) for building your machine. 
Look in the file and see the various options which you can modify. 

To start the VM use

```
vagrant up
```
It will take a while to download and start the machine.
Once it has started, try logging in using.

```
vagrant ssh 
```

Once logged in look for the injected `/vagrant` folder which should contain the contents of your project folder in which you started vagrant.

```
ls /vagrant
```

Exit the shell .

```
exit
```

List the boxes in your system.
You should see the downloaded box.

```
vagrant box list
```
Shut down the virtual machine

```
vagrant halt # will halt the machine
             # vagrant suspend will hibernate the machine
```

Delete the box and check it is deleted in VirtualBox

```
vagrant destroy
```

Note that while this may remove the machine from the VirtualBox gui, it may not remove it from the actual folder `C:\devel\virtualbox-machines`

If it is still there, delete it manually.

# Vagrant boxes provided in lab machines

The lab machines have vagrant boxes provided in D:/vagranthome

These correspond to the lab vagrant files in the folders under [vagrant-examples/bento](./bento)

These vagrant boxes were created using vagrant init on windows with VirtualBox

These are used to create local vagrant master boxes for use when off-line

Hashicorp are closing vagrant cloud, so these boxes have been created using vagrant cloud before it stops service. 

```
vagrant init BOX-VERSION   # e.g. vagrant init bento/ubuntu-22.04
vagrant up   
vagrant ssh  # log into the box to ensure working use 'exit' to logout


vagrant halt    # stop the box but keeps local metadata
vagrant destroy # only destroys the local metadata - not the master box

```

You can find out more about vagrant from the many tutorial examples and online documentation.
* [vagrant guide](https://www.baeldung.com/ops/vagrant-guide)
* [vagrant documentation](https://developer.hashicorp.com/vagrant/docs)

---
**Exercise 1.3**

Read the notes in Package Management  and see if you can 
* Spin up a vagrant box and install Apache manually using the SSH terminal. Try this for the Ubuntu boxes
* Work out how you can expose port 80 to see the Apache server on your host system. (See [Forwarded Ports](https://developer.hashicorp.com/vagrant/docs/networking/forwarded_ports) ).
* Can you work out how to install Apache at the same time as the vagrant box is being built (See [Provisioning](https://developer.hashicorp.com/vagrant/docs/provisioning/basic_usage) ).
---

