[Main Menu](../../../sessions/README.md)|[Session1](../../session1/) | [Session 1 Notes](../docs/sessionNotes.md)

# Session 1 Notes and Exercises

## Git for Infrastructure as Code
Git is now widely used as the backbone `source of truth` for managing infrastructure as code.
In this class we will be using git extensively, so the first thing we need to consolidate is a basic understanding of how Git works

---
**Exercise 1.1**

Follow the notes in the usingGit folder the top of this repository in order to
* create and personalise your gitHub account
* create a personal fork of this repo
* begin writing notes and recording your own work in your own fork for later use in your report

---

## Operating Systems

Start by revising [Operating Systems Structure](./operating-systems-structure.md).

## Virtualisation

A virtual machine (VM) is a software-based emulation of a physical computer that runs its own operating system and applications using a shared pool of a host machine's hardware resources.

• Host and Guest: The physical computer running the virtualization software is the host, and the virtual machine itself is the guest.
• Hypervisor: A lightweight software layer called a hypervisor divides the host's physical resources (such as CPU, memory, and storage) and allocates them to the guest VM.
• Isolation: The VM operates in an independent, sandboxed environment so that software or malware inside the VM cannot interfere with the host system's primary operating system

A type 1 hypervisor runs natively on the bare metal server. This is most often used in data centres.

A type 2 hypervisor runs on top of an already installed operating system. Typically this is what we use for experiments with your work PC.

![alt text](./images/HypervisorTypes.png "Figure HypervisorTypes.png")

VMware Player and VirtualBox are widely used type 2 virtualisation frameworks which run on windows.

# Virtualisation Examples

---
**Exercise 1.2**

Follow the notes below to install VirtualBox on your own PC or use virtualbox in the lab
* install virtual box
* install a virtual machine from the iso file in the lab D:/vm-iso-files

---

## Installing VirtualBox


(Note VirtualBox is already installed on the university machines)

You can download VirtualBox from [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads)

Other virtual box installers and iso files are here (i amusing version 7.2.4) https://download.virtualbox.org/virtualbox/https://download.virtualbox.org/virtualbox/7.2.4/

Wen you install VirtualBox, I recommend that you also need to set the preferences to place the virtual machines in a location which is not on a network drive.

![alt text](../vagrant-examples/images/virtaulBoxPreferences.png "Figure virtaulBoxPreferences.png")

# Building a VirtualBox machine from an .iso file

It is perfectly possible to build virtual box machines from a downloaded DVD `.iso` file using the VirtualBox gui.
You may already have done this. 
Lots of tutorials are available on line and the [VirtualBox documentation](https://www.virtualbox.org/wiki/Documentation) is quite useful

Here is a tutorial for installing Rocky Linux on VirtualBox manually from an iso
[Guide to Rocky on VirtualBox](https://docs.rockylinux.org/10/guides/virtualization/vbox-rocky/)
The basis steps will be the same for RHEL, Centos, Alma linux.

The isos for various releases are available on line and can be downloaded directly or faster by using `bittorrent` if it is not blocked on your network.

(Note that the lab version of VirtualBox will not work with Ubuntu 26 or Rocky 10)

Ubuntu:

[Ubuntu 22.04.5 https://releases.ubuntu.com/jammy/](https://releases.ubuntu.com/jammy/)

Ubuntu 24.04.5 https://releases.ubuntu.com/noble/](https://releases.ubuntu.com/noble/)


Rocky Linux:

[https://rockylinux.org/download](https://rockylinux.org/download)

[Rocky 9.8 https://rockylinux.org/news/rocky-linux-9-8-ga-release](https://rockylinux.org/news/rocky-linux-9-8-ga-release)

[Rocky 10 https://download.rockylinux.org/pub/rocky/10/isos/x86_64/](https://download.rockylinux.org/pub/rocky/10/isos/x86_64/)

Alma Liux:

[https://almalinux.org/get-almalinux/](https://almalinux.org/get-almalinux/)

[https://repo.almalinux.org/almalinux/10/isos/x86_64/](https://repo.almalinux.org/almalinux/10/isos/x86_64/)

# Getting Started with Vagrant and Virtual Box

Vagrant makes the whole process of provisioning a virtual machine much more consistent and easier to do.
We will use vagrant in the class to make it easier to configure virtual machines for our experiments.

Read the notes on [vagrant-examples](../../session1/vagrant-examples) and try creating virtual machines with vagrant.

## Vagrant Networking and Provisioning

By default, your vagrant machine will only have one network interface running behind a NAT firewall.
This means that while the VM can contact external networks connected to your host computer, your host and external computers cannot connect to your virtual machine.

To fix this, vagrant allows a command which sets up port forwarding to the host machine.

Uncomment the following line in the example vagrant files to enable port forwarding from port 80 on the guest to port 8080 on the host

```
  config.vm.network "forwarded_port", guest: 80, host: 8080
```

(Note that you may need to use a port other than 8080 on the host machine if 8080 is already in use).

Now we can install a web server on the guest and forward pages to our host machine.

Read the notes on [Package Management](./package-management-apache.md) and see if you can manually install and start Apache on the Ubuntu Linux machines.

## Vagrant Provisioning

---
**Exercise 1.4**

Follow the notes below to automatically provision Apache on a vagrant box

---

If you have managed to get Apache installed manually on the Ubuntu machine, we are going to do the same automatically from vagrant.

Before you start destroy your existing vagrant machine

```
vagrant destroy
```

Uncomment the following lines in the vagrant file

```
  config.vm.provision "shell", inline: <<-SHELL
     apt-get update
     apt-get install -y apache2
  SHELL
```
 and restart the machine using
 
```
vagrant up
```

The shell provisioner runs the specified in line shell script and automatically installs and enables apache2 in Ubuntu.


---
**Exercise 1.5 - more challenging**

Having installed apache on Ubuntu, how would you do the same on Rocky Linux. 

There are a few more gotchas for you to debug.

A few hints

1. on Rocky, Apache is called httpd. You are using yum to install httpd. `sudo yum -y install httpd`
2. dont forget to enable and start httpd `sudo systemctl enable httpd; sudo systemctl start firewalld`
3. you need to create the index.html page in /var/www/html/ before httpd will respond
4. make sure the firewalld is not blocking http `sudo systemctl stop firewalld` will turn it off - but it would be better to allow http (see https://www.redhat.com/en/blog/firewalld-linux-firewall)

---
