# Exercise 4.1
## Start PXE Server
```
cd session4/vagrant-examples/vagrant-pxe/server
vagrant up
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> vagrant status
Current machine states:

pxe_server                running (virtualbox)

The VM is running. To stop this VM, you can run `vagrant halt` to
shut it down forcefully, or you can run `vagrant suspend` to simply
suspend the virtual machine. In either case, to restart it again,
simply run `vagrant up`.
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> vagrant ssh
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Tue Oct 20 11:09:19 PM UTC 2026

  System load:           0.1
  Usage of /:            27.5% of 30.34GB
  Memory usage:          14%
  Swap usage:            0%
  Processes:             153
  Users logged in:       0
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
vagrant@pxe-server:~$
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> cd ..
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe> cd client
```

```

```

