[Personal Learning Record](../../personal_journal/personal_journal.md) | [Session Notes](../sessions/README.md) 

# Session 2

## Topics covered
*What topics were covered in this session*



## Personal Notes and research following this session
*Which class sessions and personal research refers to technology in this proposal. Link to examples.*



## Exercises and results
*What exercises did you complete. What results. Screen shots and notes*

*After vagrant fired up the 3 machines, I did the following:*

PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session2\vagrant-examples\example2-2> vagrant status
Current machine states:

ansible_controller        running (virtualbox)
ubuntu_1                  running (virtualbox)
rocky_1                   running (virtualbox)

This environment represents multiple VMs. The VMs are all listed
above with their current state. For more information about a specific
VM, run `vagrant status NAME`.
#################################################################
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session2\vagrant-examples\example2-2> vagrant ssh ansible_controller
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct  7 10:09:24 AM UTC 2026

  System load:           0.19
  Usage of /:            16.1% of 30.34GB
  Memory usage:          29%
  Swap usage:            0%
  Processes:             131
  Users logged in:       1
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
vagrant@ansible-controller:~$ ssh ansible@192.168.65.20
ssh: connect to host 192.168.65.20 port 22: Connection refused
vagrant@ansible-controller:~$ exit
logout
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session2\vagrant-examples\example2-2> vagrant ssh ubuntu_1
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct  7 10:11:43 AM UTC 2026

  System load:           0.09
  Usage of /:            14.6% of 30.34GB
  Memory usage:          21%
  Swap usage:            0%
  Processes:             131
  Users logged in:       1
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
vagrant@ubuntu-1:~$ exit
logout
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session2\vagrant-examples\example2-2> vagrant ssh rocky_1

This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
[vagrant@rocky-1 ~]$ exit
logout
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session2\vagrant-examples\example2-2> sudo su ansible
Sudo is disabled on this machine. To enable it, go to the Developer Settings page in the Settings app
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session2\vagrant-examples\example2-2> vagrant ssh ansible_controller
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct  7 10:12:54 AM UTC 2026

  System load:           0.02
  Usage of /:            16.1% of 30.34GB
  Memory usage:          29%
  Swap usage:            0%
  Processes:             130
  Users logged in:       1
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
Last login: Wed Oct  7 10:09:25 2026 from 10.0.2.2
vagrant@ansible-controller:~$ sudo su ansible
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ansible@ansible-controller:/home/vagrant$ ssh 192.168.56.20
The authenticity of host '192.168.56.20 (192.168.56.20)' can't be established.
ED25519 key fingerprint is SHA256:VjufUgJCRplYbNSq6ATc0g/DLpYxoTbOJ7Eaml2Enlc.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '192.168.56.20' (ED25519) to the list of known hosts.
Load key "/home/ansible/.ssh/id_rsa": error in libcrypto
ansible@192.168.56.20's password:
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct  7 10:13:46 AM UTC 2026

  System load:           0.36
  Usage of /:            14.6% of 30.34GB
  Memory usage:          21%
  Swap usage:            0%
  Processes:             131
  Users logged in:       1
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.

The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ansible@ubuntu-1:~$ exit
logout
Connection to 192.168.56.20 closed.
ansible@ansible-controller:/home/vagrant$ ssh 192.168.56.30
The authenticity of host '192.168.56.30 (192.168.56.30)' can't be established.
ED25519 key fingerprint is SHA256:NcU1EQT5o1v+HYAdqF972vTlrHoEppCN9OSuFUfeIQE.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '192.168.56.30' (ED25519) to the list of known hosts.
Load key "/home/ansible/.ssh/id_rsa": error in libcrypto
ansible@192.168.56.30's password:

This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
Activate the web console with: systemctl enable --now cockpit.socket

[ansible@rocky-1 ~]$ exit
logout
Connection to 192.168.56.30 closed.
ansible@ansible-controller:/home/vagrant$ ls -all
ls: cannot open directory '.': Permission denied
ansible@ansible-controller:/home/vagrant$ ls
ls: cannot open directory '.': Permission denied
ansible@ansible-controller:/home/vagrant$ sudo su
root@ansible-controller:/home/vagrant# ls
root@ansible-controller:/home/vagrant# ls -al
total 36
drwxr-x--- 4 vagrant vagrant 4096 Oct  7 10:11 .
drwxr-xr-x 5 root    root    4096 Oct  7 10:00 ..
-rw------- 1 vagrant vagrant   31 Oct  7 10:11 .bash_history
-rw-r--r-- 1 vagrant vagrant  220 Mar 31  2024 .bash_logout
-rw-r--r-- 1 vagrant vagrant 3771 Mar 31  2024 .bashrc
drwx------ 2 vagrant vagrant 4096 Oct 23  2025 .cache
-rw-r--r-- 1 vagrant vagrant  807 Mar 31  2024 .profile
drwx------ 2 vagrant vagrant 4096 Oct  7 09:58 .ssh
-rw-r--r-- 1 vagrant vagrant    0 Oct 23  2025 .sudo_as_admin_successful
-rw-r--r-- 1 vagrant vagrant    5 Oct 23  2025 .vbox_version
root@ansible-controller:/home/vagrant#

########################################################################

*Logged in to ansible controller using putty*
login as: admin
admin@192.168.56.10's password:
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct  7 10:18:00 AM UTC 2026

  System load:           0.24
  Usage of /:            16.1% of 30.34GB
  Memory usage:          48%
  Swap usage:            0%
  Processes:             140
  Users logged in:       2
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

admin@ansible-controller:~$ login as: admin
admin@192.168.56.10's password:
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct  7 10:18:00 AM UTC 2026

  System load:           0.24
  Usage of /:            16.1% of 30.34GB
  Memory usage:          48%
  Swap usage:            0%
  Processes:             140
  Users logged in:       2
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
^Cmin@ansible-controller:~$ails.r (user "root"), use "sudo <command>".
admin@ansible-controller:~$



## Summary of learning
*What did you learn through these exercises*
