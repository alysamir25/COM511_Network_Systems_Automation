Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

```
PS C:\WINDOWS\system32> cd "C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server"
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> vagrant up
Bringing machine 'pxe_server' up with 'virtualbox' provider...
==> pxe_server: Checking if box 'bento/ubuntu-24.04' version '202510.26.0' is up to date...
==> pxe_server: Clearing any previously set forwarded ports...
==> pxe_server: Clearing any previously set network interfaces...
==> pxe_server: Preparing network interfaces based on configuration...
    pxe_server: Adapter 1: nat
    pxe_server: Adapter 2: intnet
==> pxe_server: Forwarding ports...
    pxe_server: 22 (guest) => 2222 (host) (adapter 1)
==> pxe_server: Running 'pre-boot' VM customizations...
==> pxe_server: Booting VM...
==> pxe_server: Waiting for machine to boot. This may take a few minutes...
    pxe_server: SSH address: 127.0.0.1:2222
    pxe_server: SSH username: vagrant
    pxe_server: SSH auth method: private key
==> pxe_server: Machine booted and ready!
==> pxe_server: Checking for guest additions in VM...
==> pxe_server: Setting hostname...
==> pxe_server: Configuring and enabling network interfaces...
==> pxe_server: Mounting shared folders...
    pxe_server: C:/devel/gitrepos/COM511_Network_Systems_Automation/myPracticeCourseWork/session4/vagrant-examples/vagrant-pxe/server => /vagrant
==> pxe_server: Machine already provisioned. Run `vagrant provision` or usethe `--provision`
==> pxe_server: flag to force provisioning. Provisioners marked to run always will still run.
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> vagrant ssh
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Mon Oct 26 03:48:39 PM UTC 2026

  System load:           0.0
  Usage of /:            29.1% of 30.34GB
  Memory usage:          11%
  Swap usage:            0%
  Processes:             153
  Users logged in:       0
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
Last login: Mon Oct 26 12:02:37 2026 from 10.0.2.2
```

```
vagrant@pxe-server:~$ sudo su ansible
ansible@pxe-server:/home/vagrant$ cd ..
ansible@pxe-server:/home$ cd ..
ansible@pxe-server:/$ cd vagrant
ansible@pxe-server:/vagrant$ cd ansible
ansible@pxe-server:/vagrant/ansible$ ls
project-ansible2-1  project-ansible2-2  README.md
```

```
ansible@pxe-server:/vagrant/ansible$ ssh 192.168.0.10
ansible@192.168.0.10's password:
Welcome to Ubuntu 24.04.5 LTS (GNU/Linux 6.8.0-139-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Mon 26 Oct 23:43:57 UTC 2026

  System load: 0.72               Memory usage: 2%   Processes:       140
  Usage of /:  10.9% of 60.72GB   Swap usage:   0%   Users logged in: 0


Expanded Security Maintenance for Applications is not enabled.

0 updates can be applied immediately.

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status

Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings


Last login: Mon Oct 26 12:41:07 2026 from 192.168.0.254
```

```
ansible@ubuntu24pxe1:~$ ping 192.168.0.254
PING 192.168.0.254 (192.168.0.254) 56(84) bytes of data.
64 bytes from 192.168.0.254: icmp_seq=1 ttl=64 time=1.62 ms
64 bytes from 192.168.0.254: icmp_seq=2 ttl=64 time=1.53 ms
64 bytes from 192.168.0.254: icmp_seq=3 ttl=64 time=1.15 ms
64 bytes from 192.168.0.254: icmp_seq=4 ttl=64 time=2.21 ms
^C
--- 192.168.0.254 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3004ms
rtt min/avg/max/mdev = 1.149/1.627/2.210/0.380 ms
ansible@ubuntu24pxe1:~$ exit
logout
Connection to 192.168.0.10 closed.
```

```
ansible@pxe-server:/vagrant/ansible$ cd project-ansible2-1
ansible@pxe-server:/vagrant/ansible/project-ansible2-1$ ls
ansible.cfg  inventory2.ini  inventory.ini  README.md
ansible@pxe-server:/vagrant/ansible/project-ansible2-1$ ansible -i inventory2.ini all -m ping
[WARNING]: Ansible is being run in a world writable directory (/vagrant/ansible/project-ansible2-1), ignoring it as an ansible.cfg source. For more information see https://docs.ansible.com/ansible/devel/reference_appendices/config.html#cfg-in-world-writable-dir
[WARNING]: Invalid characters were found in group names but not replaced, use -vvvv to see details
[WARNING]: Host 'pxe_server' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpretercould cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.
pxe_server | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3.12"
    },
    "changed": false,
    "ping": "pong"
}
[WARNING]: Host 'pxe_client' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpretercould cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.
pxe_client | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3.12"
    },
    "changed": false,
    "ping": "pong"
}
ansible@pxe-server:/vagrant/ansible/project-ansible2-1$ exit
exit
vagrant@pxe-server:~$ exit
logout
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> vagrant halt
==> pxe_server: Attempting graceful shutdown of VM...
==> pxe_server: Forcing shutdown of VM...
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> vagrant up
Bringing machine 'pxe_server' up with 'virtualbox' provider...
==> pxe_server: Checking if box 'bento/ubuntu-24.04' version '202510.26.0' is up to date...
==> pxe_server: Clearing any previously set forwarded ports...
==> pxe_server: Clearing any previously set network interfaces...
==> pxe_server: Preparing network interfaces based on configuration...
    pxe_server: Adapter 1: nat
    pxe_server: Adapter 2: intnet
==> pxe_server: Forwarding ports...
    pxe_server: 22 (guest) => 2222 (host) (adapter 1)
==> pxe_server: Running 'pre-boot' VM customizations...
==> pxe_server: Booting VM...
==> pxe_server: Waiting for machine to boot. This may take a few minutes...
    pxe_server: SSH address: 127.0.0.1:2222
    pxe_server: SSH username: vagrant
    pxe_server: SSH auth method: private key
==> pxe_server: Machine booted and ready!
==> pxe_server: Checking for guest additions in VM...
==> pxe_server: Setting hostname...
==> pxe_server: Configuring and enabling network interfaces...
==> pxe_server: Mounting shared folders...
    pxe_server: C:/devel/gitrepos/COM511_Network_Systems_Automation/myPracticeCourseWork/session4/vagrant-examples/vagrant-pxe/server => /vagrant
==> pxe_server: Machine already provisioned. Run `vagrant provision` or usethe `--provision`
==> pxe_server: flag to force provisioning. Provisioners marked to run always will still run.
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> vagrant ssh
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Tue Oct 27 12:22:12 AM UTC 2026

  System load:           0.91
  Usage of /:            29.2% of 30.34GB
  Memory usage:          10%
  Swap usage:            0%
  Processes:             163
  Users logged in:       0
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
Last login: Mon Oct 26 23:36:48 2026 from 10.0.2.2
```

```
vagrant@pxe-server:~$ sudo su ansible
ansible@pxe-server:/$ cd vagrant
ansible@pxe-server:/vagrant$ cd ansible
ansible@pxe-server:/vagrant/ansible$ cd project-ansible2-2
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ ansible-playbook pla
ybook-all-apache.yml -i inventory.ini
[WARNING]: Invalid characters were found in group names but not replaced, use -vvvv to see details

PLAY [Install apache on all web servers] ***************************************

TASK [Gathering Facts] *********************************************************
[WARNING]: Host 'pxe_server' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpretercould cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.
ok: [pxe_server]
[WARNING]: Host 'pxe_client' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpretercould cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.
ok: [pxe_client]

TASK [installApache : debug] ***************************************************
ok: [pxe_server] => {
    "msg": "Running tasks for  OS Family: Debian"
}
ok: [pxe_client] => {
    "msg": "Running tasks for  OS Family: Debian"
}

TASK [installApache : Load OS specific tasks (RHEL)] ***************************
skipping: [pxe_server]
skipping: [pxe_client]

TASK [installApache : Load OS specific tasks (Debian)] *************************
included: /vagrant/ansible/project-ansible2-2/roles/installApache/tasks/Debian.yml for pxe_server, pxe_client

TASK [installApache : install apache2] *****************************************
ok: [pxe_server]
[WARNING]: Failed to update cache after 1 retries due to , retrying
[WARNING]: Sleeping for 1 seconds, before attempting to refresh the cache again
[WARNING]: Failed to update cache after 2 retries due to , retrying
[WARNING]: Sleeping for 2 seconds, before attempting to refresh the cache again
[WARNING]: Failed to update cache after 3 retries due to , retrying
[WARNING]: Sleeping for 4 seconds, before attempting to refresh the cache again
[WARNING]: Failed to update cache after 4 retries due to , retrying
[WARNING]: Sleeping for 8 seconds, before attempting to refresh the cache again
[WARNING]: Failed to update cache after 5 retries due to , retrying
[WARNING]: Sleeping for 12 seconds, before attempting to refresh the cache again
[ERROR]: Task failed: Module failed: Failed to update apt cache after 5 retries:
Origin: /vagrant/ansible/project-ansible2-2/roles/installApache/tasks/Debian.yml:3:7

1 ---
2
3     - name: install apache2
        ^ column 7

fatal: [pxe_client]: FAILED! => {"changed": false, "msg": "Failed to updateapt cache after 5 retries: "}

TASK [installApache : Start Apache] ********************************************
[ERROR]: Task failed: Module failed: Unable to start service apache2: Job for apache2.service failed because the control process exited with error code.
See "systemctl status apache2.service" and "journalctl -xeu apache2.service" for details.

Origin: /vagrant/ansible/project-ansible2-2/roles/installApache/tasks/Debian.yml:10:7

 8       become: true
 9
10     - name: Start Apache
         ^ column 7

fatal: [pxe_server]: FAILED! => {"changed": false, "msg": "Unable to start service apache2: Job for apache2.service failed because the control process exited with error code.\nSee \"systemctl status apache2.service\" and \"journalctl -xeu apache2.service\" for details.\n"}

PLAY RECAP *********************************************************************
pxe_client                 : ok=3    changed=0    unreachable=0    failed=1   skipped=1    rescued=0    ignored=0
pxe_server                 : ok=4    changed=0    unreachable=0    failed=1   skipped=1    rescued=0    ignored=0
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ ping 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=116 time=22.9 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=116 time=20.7 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=116 time=19.1 ms
64 bytes from 8.8.8.8: icmp_seq=4 ttl=116 time=18.5 ms
64 bytes from 8.8.8.8: icmp_seq=5 ttl=116 time=18.9 ms
^C
--- 8.8.8.8 ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4021ms
rtt min/avg/max/mdev = 18.530/20.024/22.882/1.614 ms
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ ssh 192.168.0.10
ansible@192.168.0.10's password:
Welcome to Ubuntu 24.04.5 LTS (GNU/Linux 6.8.0-139-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Tue 27 Oct 00:45:13 UTC 2026

  System load: 0.08               Memory usage: 2%   Processes:       128
  Usage of /:  10.9% of 60.72GB   Swap usage:   0%   Users logged in: 0


Expanded Security Maintenance for Applications is not enabled.

0 updates can be applied immediately.

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status

Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings


Last login: Tue Oct 27 00:38:53 2026 from 192.168.0.254
```

```
ansible@ubuntu24pxe1:~$ ping -c 3 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
From 192.168.0.10 icmp_seq=1 Destination Host Unreachable
From 192.168.0.10 icmp_seq=2 Destination Host Unreachable
From 192.168.0.10 icmp_seq=3 Destination Host Unreachable

--- 8.8.8.8 ping statistics ---
3 packets transmitted, 0 received, +3 errors, 100% packet loss, time 2035ms
pipe 3
```

```
ansible@ubuntu24pxe1:~$ ip -br addr
lo               UNKNOWN        127.0.0.1/8 ::1/128
enp0s3           UP             192.168.0.10/24 fe80::a00:27ff:fe6f:16b4/64
```

```
ansible@ubuntu24pxe1:~$ ip route
default dev enp0s3 proto static scope link
192.168.0.0/24 dev enp0s3 proto kernel scope link src 192.168.0.10
```

```
ansible@ubuntu24pxe1:~$ ip neigh
8.8.8.8 dev enp0s3 FAILED
192.168.0.254 dev enp0s3 lladdr 08:00:27:37:6e:e8 REACHABLE
```

```
ansible@ubuntu24pxe1:~$ ping -c 3 192.168.0.254
PING 192.168.0.254 (192.168.0.254) 56(84) bytes of data.
64 bytes from 192.168.0.254: icmp_seq=1 ttl=64 time=12.8 ms
64 bytes from 192.168.0.254: icmp_seq=2 ttl=64 time=2.66 ms
64 bytes from 192.168.0.254: icmp_seq=3 ttl=64 time=2.19 ms

--- 192.168.0.254 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2004ms
rtt min/avg/max/mdev = 2.185/5.868/12.763/4.879 ms
ansible@ubuntu24pxe1:~$ ip route get 8.8.8.8
8.8.8.8 dev enp0s3 src 192.168.0.10 uid 1000
    cache
```

```
ansible@ubuntu24pxe1:~$ ip -br addr
ip route
lo               UNKNOWN        127.0.0.1/8 ::1/128
enp0s3           UP             192.168.0.10/24 fe80::a00:27ff:fe6f:16b4/64
default dev enp0s3 proto static scope link
192.168.0.0/24 dev enp0s3 proto kernel scope link src 192.168.0.10
ansible@ubuntu24pxe1:~$ client_loop: send disconnect: Broken pipe
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ ssh 192.168.0.10
ansible@192.168.0.10's password:
Welcome to Ubuntu 24.04.5 LTS (GNU/Linux 6.8.0-139-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Tue 27 Oct 01:04:50 UTC 2026

  System load: 0.84               Memory usage: 2%   Processes:       138
  Usage of /:  10.9% of 60.72GB   Swap usage:   0%   Users logged in: 0


Expanded Security Maintenance for Applications is not enabled.

0 updates can be applied immediately.

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status

Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings


Last login: Tue Oct 27 00:45:15 2026 from 192.168.0.254
```

```
ansible@ubuntu24pxe1:~$ ip -br addr
ip route
lo               UNKNOWN        127.0.0.1/8 ::1/128
enp0s3           UP             192.168.0.10/24 fe80::a00:27ff:fe6f:16b4/64
enp0s8           DOWN
default dev enp0s3 proto static scope link
192.168.0.0/24 dev enp0s3 proto kernel scope link src 192.168.0.10
```

```
ansible@ubuntu24pxe1:~$ sudo ip link set enp0s8 up
```
```
ansible@ubuntu24pxe1:~$ sudo dhclient -v enp0s8
sudo: dhclient: command not found
```

```
ansible@ubuntu24pxe1:~$ systemctl is-active systemd-networkd
active
```

```
ansible@ubuntu24pxe1:~$ networkctl status enp0s8
● 3: enp0s8
                   Link File: /usr/lib/systemd/network/99-default.link
                Network File: n/a
                       State: routable (unmanaged)
                Online state: unknown
                        Type: ether
                        Path: pci-0000:00:08.0
                      Driver: e1000
                      Vendor: Intel Corporation
                       Model: 82540EM Gigabit Ethernet Controller (PRO/1000>
            Hardware Address: 08:00:27:da:16:d3 (PCS Systemtechnik GmbH)
                         MTU: 1500 (min: 46, max: 16110)
                       QDisc: fq_codel
IPv6 Address Generation Mode: eui64
    Number of Queues (Tx/Rx): 1/1
            Auto negotiation: yes
                       Speed: 1Gbps
                      Duplex: full
                        Port: tp
                     Address: fd17:625c:f037:3:a00:27ff:feda:16d3
                              fe80::a00:27ff:feda:16d3
                     Gateway: fe80::2

Oct 27 01:05:41 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Link UP
Oct 27 01:05:41 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Gained carrier
Oct 27 01:05:42 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Gained IPv6LL
...skipping...
● 3: enp0s8
                   Link File: /usr/lib/systemd/network/99-default.link
                Network File: n/a
                       State: routable (unmanaged)
                Online state: unknown
                        Type: ether
                        Path: pci-0000:00:08.0
                      Driver: e1000
                      Vendor: Intel Corporation
                       Model: 82540EM Gigabit Ethernet Controller (PRO/1000>
            Hardware Address: 08:00:27:da:16:d3 (PCS Systemtechnik GmbH)
                         MTU: 1500 (min: 46, max: 16110)
                       QDisc: fq_codel
IPv6 Address Generation Mode: eui64
    Number of Queues (Tx/Rx): 1/1
            Auto negotiation: yes
                       Speed: 1Gbps
                      Duplex: full
                        Port: tp
                     Address: fd17:625c:f037:3:a00:27ff:feda:16d3
                              fe80::a00:27ff:feda:16d3
                     Gateway: fe80::2

Oct 27 01:05:41 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Link UP
Oct 27 01:05:41 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Gained carrier
Oct 27 01:05:42 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Gained IPv6LL
~
~
~
~
~
~
~
~
~
~
~
~
~
~
lines 1-26/26 (END)
^C
```

```
ansible@ubuntu24pxe1:~$ ip -br addr
lo               UNKNOWN        127.0.0.1/8 ::1/128
enp0s3           UP             192.168.0.10/24 fe80::a00:27ff:fe6f:16b4/64
enp0s8           UP             fd17:625c:f037:3:a00:27ff:feda:16d3/64 fe80::a00:27ff:feda:16d3/64
ansible@ubuntu24pxe1:~$ ip route
default dev enp0s3 proto static scope link
192.168.0.0/24 dev enp0s3 proto kernel scope link src 192.168.0.10
ansible@ubuntu24pxe1:~$ ls -l /etc/netplan/
total 4
-rw------- 1 root root 114 Oct 22 23:13 50-cloud-init.yaml
```

```
ansible@ubuntu24pxe1:~$ sudo netplan get

** (process:1034): WARNING **: 01:08:19.236: `gateway4` has been deprecated, use default routes instead.
See the 'Default routes' section of the documentation for more details.
network:
  version: 2
  ethernets:
    enp0s3:
      addresses:
      - "192.168.0.10/24"
      gateway4: 0.0.0.0
```

```
ansible@ubuntu24pxe1:~$ ip -4 addr show enp0s8
```

```
ansible@ubuntu24pxe1:~$ sudo cat /etc/netplan/50-cloud-init.yaml
network:
  version: 2
  ethernets:
    enp0s3:
      addresses:
      - "192.168.0.10/24"
```

```
ansible@ubuntu24pxe1:~$ sudo netplan get
network:
  version: 2
  ethernets:
    enp0s3:
      addresses:
      - "192.168.0.10/24"
      dhcp4: false
      dhcp6: false
      routes:
      - scope: "link"
        to: "192.168.0.0/24"
    enp0s8:
      dhcp4: true
      dhcp6: false
      routes:
      - metric: 100
        to: "default"
        via: "10.0.2.2"
```

```
ansible@ubuntu24pxe1:~$ ping google.com
ping: google.com: Temporary failure in name resolution
ansible@ubuntu24pxe1:~$ ping 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
From 192.168.0.10 icmp_seq=1 Destination Host Unreachable
From 192.168.0.10 icmp_seq=2 Destination Host Unreachable
From 192.168.0.10 icmp_seq=3 Destination Host Unreachable
From 192.168.0.10 icmp_seq=4 Destination Host Unreachable
From 192.168.0.10 icmp_seq=5 Destination Host Unreachable
From 192.168.0.10 icmp_seq=6 Destination Host Unreachable
^C
--- 8.8.8.8 ping statistics ---
7 packets transmitted, 0 received, +6 errors, 100% packet loss, time 6138ms
pipe 4
```

```
ansible@ubuntu24pxe1:~$ ip -4 addr show enp0s8
```

```
ansible@ubuntu24pxe1:~$ networkctl status enp0s8 --no-pager
● 3: enp0s8
                   Link File: /usr/lib/systemd/network/99-default.link
                Network File: n/a
                       State: routable (unmanaged)
                Online state: unknown
                        Type: ether
                        Path: pci-0000:00:08.0
                      Driver: e1000
                      Vendor: Intel Corporation
                       Model: 82540EM Gigabit Ethernet Controller (PRO/1000…
            Hardware Address: 08:00:27:da:16:d3 (PCS Systemtechnik GmbH)
                         MTU: 1500 (min: 46, max: 16110)
                       QDisc: fq_codel
IPv6 Address Generation Mode: eui64
    Number of Queues (Tx/Rx): 1/1
            Auto negotiation: yes
                       Speed: 1Gbps
                      Duplex: full
                        Port: tp
                     Address: fd17:625c:f037:3:a00:27ff:feda:16d3
                              fe80::a00:27ff:feda:16d3
                     Gateway: fe80::2

Oct 27 01:05:41 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Link UP
Oct 27 01:05:41 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Gained carrier
Oct 27 01:05:42 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Gained IPv6LL
```

```
ansible@ubuntu24pxe1:~$ networkctl status enp0s8 --no-pager
● 3: enp0s8
                   Link File: /usr/lib/systemd/network/99-default.link
                Network File: n/a
                       State: routable (unmanaged)
                Online state: unknown
                        Type: ether
                        Path: pci-0000:00:08.0
                      Driver: e1000
                      Vendor: Intel Corporation
                       Model: 82540EM Gigabit Ethernet Controller (PRO/1000…
            Hardware Address: 08:00:27:da:16:d3 (PCS Systemtechnik GmbH)
                         MTU: 1500 (min: 46, max: 16110)
                       QDisc: fq_codel
IPv6 Address Generation Mode: eui64
    Number of Queues (Tx/Rx): 1/1
            Auto negotiation: yes
                       Speed: 1Gbps
                      Duplex: full
                        Port: tp
                     Address: fd17:625c:f037:3:a00:27ff:feda:16d3
                              fe80::a00:27ff:feda:16d3
                     Gateway: fe80::2

Oct 27 01:05:41 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Link UP
Oct 27 01:05:41 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Gained carrier
Oct 27 01:05:42 ubuntu24pxe1 systemd-networkd[554]: enp0s8: Gained IPv6LL
```

```
ansible@ubuntu24pxe1:~$ ping -c 3 10.0.2.2
PING 10.0.2.2 (10.0.2.2) 56(84) bytes of data.
From 192.168.0.10 icmp_seq=1 Destination Host Unreachable
From 192.168.0.10 icmp_seq=2 Destination Host Unreachable
From 192.168.0.10 icmp_seq=3 Destination Host Unreachable

--- 10.0.2.2 ping statistics ---
3 packets transmitted, 0 received, +3 errors, 100% packet loss, time 2088ms
pipe 3
```

```
ansible@ubuntu24pxe1:~$ sudo cat /etc/netplan/50-cloud-init.yaml
network:
  version: 2
  ethernets:
    enp0s3:
      addresses:
        - 192.168.0.10/24
      dhcp4: false
      dhcp6: false
      routes:
        - to: 192.168.0.0/24
          scope: link
    enp0s8:
      dhcp4: true
      dhcp6: false
      routes:
        - to: default
          via: 10.0.2.2
          metric: 100
```

```
ansible@ubuntu24pxe1:~$ sudo netplan status
     Online state: offline
    DNS Addresses: 127.0.0.53 (stub)
       DNS Search: .

●  1: lo ethernet UNKNOWN/UP (unmanaged)
      MAC Address: 00:00:00:00:00:00
        Addresses: 127.0.0.1/8
                   ::1/128

●  2: enp0s3 ethernet UP (networkd: enp0s3)
      MAC Address: 08:00:27:6f:16:b4 (Intel Corporation)
        Addresses: 192.168.0.10/24
                   fe80::a00:27ff:fe6f:16b4/64 (link)
           Routes: default (static, link)
                   192.168.0.0/24 from 192.168.0.10 (link)
                   fe80::/64 metric 256

●  3: enp0s8 ethernet UP (unmanaged)
      MAC Address: 08:00:27:da:16:d3 (Intel Corporation)
        Addresses: fd17:625c:f037:3:a00:27ff:feda:16d3/64 (dynamic)
                   fe80::a00:27ff:feda:16d3/64 (link)
           Routes: fd17:625c:f037:3::/64 metric 256
                   fe80::/64 metric 256
                   default via fe80::2 metric 1024 (ra)
```

```
ansible@ubuntu24pxe1:~$ sudo cat /etc/netplan/50-cloud-init.yaml
network:
  version: 2
  ethernets:
    enp0s3:
      addresses:
        - 192.168.0.10/24
      dhcp4: false
      dhcp6: false
      routes:
        - to: 192.168.0.0/24
          scope: link
    enp0s8:
      dhcp4: true
      dhcp6: false
      routes:
        - to: default
          via: 10.0.2.2
          metric: 100
```

```
ansible@ubuntu24pxe1:~$ sudo netplan generate
```
```
ansible@ubuntu24pxe1:~$ sudo netplan apply
```
```
ansible@ubuntu24pxe1:~$ ip -4 addr show enp0s8
ip route
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    inet 10.0.3.15/24 metric 100 brd 10.0.3.255 scope global dynamic enp0s8
       valid_lft 86396sec preferred_lft 86396sec
default via 10.0.2.2 dev enp0s8 proto static metric 100 onlink
default via 10.0.3.2 dev enp0s8 proto dhcp src 10.0.3.15 metric 100
10.0.3.0/24 dev enp0s8 proto kernel scope link src 10.0.3.15 metric 100
10.0.3.2 dev enp0s8 proto dhcp scope link src 10.0.3.15 metric 100
192.168.0.0/24 dev enp0s3 proto kernel scope link src 192.168.0.10
192.168.0.0/24 dev enp0s3 proto static scope link
194.168.4.100 via 10.0.3.2 dev enp0s8 proto dhcp src 10.0.3.15 metric 100
194.168.8.100 via 10.0.3.2 dev enp0s8 proto dhcp src 10.0.3.15 metric 100
ansible@ubuntu24pxe1:~$ sudo netplan status
     Online state: online
    DNS Addresses: 127.0.0.53 (stub)
       DNS Search: .

●  1: lo ethernet UNKNOWN/UP (unmanaged)
      MAC Address: 00:00:00:00:00:00
        Addresses: 127.0.0.1/8
                   ::1/128

●  2: enp0s3 ethernet UP (networkd: enp0s3)
      MAC Address: 08:00:27:6f:16:b4 (Intel Corporation)
        Addresses: 192.168.0.10/24
                   fe80::a00:27ff:fe6f:16b4/64 (link)
           Routes: 192.168.0.0/24 from 192.168.0.10 (link)
                   192.168.0.0/24 (static, link)
                   fe80::/64 metric 256

●  3: enp0s8 ethernet UP (networkd: enp0s8)
      MAC Address: 08:00:27:da:16:d3 (Intel Corporation)
        Addresses: 10.0.3.15/24 (dynamic, dhcp)
                   fd17:625c:f037:3:a00:27ff:feda:16d3/64 (dynamic, ra)
                   fe80::a00:27ff:feda:16d3/64 (link)
    DNS Addresses: 194.168.4.100
                   194.168.8.100
                   fd17:625c:f037:3::3
           Routes: default via 10.0.2.2 metric 100 (static)
                   default via 10.0.3.2 from 10.0.3.15 metric 100 (dhcp)
                   10.0.3.0/24 from 10.0.3.15 metric 100 (link)
                   10.0.3.2 from 10.0.3.15 metric 100 (dhcp, link)
                   194.168.4.100 via 10.0.3.2 from 10.0.3.15 metric 100
(dhcp)
                   194.168.8.100 via 10.0.3.2 from 10.0.3.15 metric 100
(dhcp)
                   fd17:625c:f037:3::/64 metric 100 (ra)
                   fd17:625c:f037:3::/64 metric 256
                   fe80::/64 metric 256
                   default via fe80::2 metric 100 (ra)
```

```
ansible@ubuntu24pxe1:~$ ping -c 3 10.0.3.2
PING 10.0.3.2 (10.0.3.2) 56(84) bytes of data.
64 bytes from 10.0.3.2: icmp_seq=1 ttl=64 time=1.18 ms
64 bytes from 10.0.3.2: icmp_seq=2 ttl=64 time=1.59 ms
64 bytes from 10.0.3.2: icmp_seq=3 ttl=64 time=2.17 ms

--- 10.0.3.2 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2005ms
rtt min/avg/max/mdev = 1.183/1.646/2.170/0.405 ms
```
```
ansible@ubuntu24pxe1:~$ ping -c 3 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=116 time=26.8 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=116 time=22.4 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=116 time=21.6 ms

--- 8.8.8.8 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2004ms
rtt min/avg/max/mdev = 21.556/23.565/26.776/2.294 ms
```

```
ansible@ubuntu24pxe1:~$ ip route
default via 10.0.2.2 dev enp0s8 proto static metric 100 onlink
default via 10.0.3.2 dev enp0s8 proto dhcp src 10.0.3.15 metric 100
10.0.3.0/24 dev enp0s8 proto kernel scope link src 10.0.3.15 metric 100
10.0.3.2 dev enp0s8 proto dhcp scope link src 10.0.3.15 metric 100
192.168.0.0/24 dev enp0s3 proto kernel scope link src 192.168.0.10
192.168.0.0/24 dev enp0s3 proto static scope link
194.168.4.100 via 10.0.3.2 dev enp0s8 proto dhcp src 10.0.3.15 metric 100
194.168.8.100 via 10.0.3.2 dev enp0s8 proto dhcp src 10.0.3.15 metric 100
```

```
ansible@ubuntu24pxe1:~$ sudo ip route del default via 10.0.2.2 dev enp0s8
```

```
ansible@ubuntu24pxe1:~$ ip route
default via 10.0.3.2 dev enp0s8 proto dhcp src 10.0.3.15 metric 100
10.0.3.0/24 dev enp0s8 proto kernel scope link src 10.0.3.15 metric 100
10.0.3.2 dev enp0s8 proto dhcp scope link src 10.0.3.15 metric 100
192.168.0.0/24 dev enp0s3 proto kernel scope link src 192.168.0.10
192.168.0.0/24 dev enp0s3 proto static scope link
194.168.4.100 via 10.0.3.2 dev enp0s8 proto dhcp src 10.0.3.15 metric 100
194.168.8.100 via 10.0.3.2 dev enp0s8 proto dhcp src 10.0.3.15 metric 100
```

```
ansible@ubuntu24pxe1:~$ ping -c 3 10.0.3.2
PING 10.0.3.2 (10.0.3.2) 56(84) bytes of data.
64 bytes from 10.0.3.2: icmp_seq=1 ttl=64 time=2.28 ms
64 bytes from 10.0.3.2: icmp_seq=2 ttl=64 time=3.92 ms
64 bytes from 10.0.3.2: icmp_seq=3 ttl=64 time=1.71 ms

--- 10.0.3.2 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2006ms
rtt min/avg/max/mdev = 1.706/2.635/3.923/0.939 ms
```

```
ansible@ubuntu24pxe1:~$ ping -c 3 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=116 time=32.6 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=116 time=25.0 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=116 time=23.3 ms

--- 8.8.8.8 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2006ms
rtt min/avg/max/mdev = 23.269/26.964/32.601/4.049 ms
```

```
ansible@ubuntu24pxe1:~$ ping -c 3 google.com
PING google.com (142.250.151.100) 56(84) bytes of data.
64 bytes from st-in-f100.1e100.net (142.250.151.100): icmp_seq=1 ttl=111 time=28.2 ms
64 bytes from st-in-f100.1e100.net (142.250.151.100): icmp_seq=2 ttl=111 time=21.2 ms
64 bytes from st-in-f100.1e100.net (142.250.151.100): icmp_seq=3 ttl=111 time=18.7 ms

--- google.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2002ms
rtt min/avg/max/mdev = 18.684/22.678/28.188/4.025 ms
```

```
ansible@ubuntu24pxe1:~$ sudo apt update
Hit:1 http://archive.ubuntu.com/ubuntu noble InRelease
Get:2 http://archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
Get:3 http://archive.ubuntu.com/ubuntu noble-backports InRelease [126 kB]
Get:4 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]
Get:5 http://archive.ubuntu.com/ubuntu noble/main Translation-en_GB [468 kB]
Get:6 http://archive.ubuntu.com/ubuntu noble/main amd64 c-n-f Metadata [30.5 kB]
Get:7 http://archive.ubuntu.com/ubuntu noble/restricted Translation-en_GB [3,528 B]
Get:8 http://archive.ubuntu.com/ubuntu noble/restricted amd64 c-n-f Metadata [416 B]
Get:9 http://archive.ubuntu.com/ubuntu noble/universe Translation-en_GB [797 kB]
Get:10 http://archive.ubuntu.com/ubuntu noble/universe amd64 c-n-f Metadata[301 kB]
Get:11 http://archive.ubuntu.com/ubuntu noble/multiverse Translation-en_GB [96.8 kB]
Get:12 http://archive.ubuntu.com/ubuntu noble/multiverse amd64 c-n-f Metadata [8,328 B]
Get:13 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 Packages [1,401 kB]
Get:14 http://archive.ubuntu.com/ubuntu noble-updates/main Translation-en [310 kB]
Get:15 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 Components[181 kB]
Get:16 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 c-n-f Metadata [17.7 kB]
Get:17 http://archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Packages [1,805 kB]
Get:18 http://archive.ubuntu.com/ubuntu noble-updates/restricted Translation-en [411 kB]
Get:19 http://archive.ubuntu.com/ubuntu noble-updates/restricted amd64 c-n-f Metadata [456 B]
Get:20 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 Packages [1,706 kB]
Get:21 http://archive.ubuntu.com/ubuntu noble-updates/universe Translation-en [343 kB]
Get:22 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 Components [388 kB]
Get:23 http://archive.ubuntu.com/ubuntu noble-updates/universe amd64 c-n-f Metadata [34.9 kB]
Get:24 http://archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Packages [50.7 kB]
Get:25 http://archive.ubuntu.com/ubuntu noble-updates/multiverse Translation-en [14.0 kB]
Get:26 http://archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Components [940 B]
Get:27 http://archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 c-n-f Metadata [656 B]
Get:28 http://archive.ubuntu.com/ubuntu noble-backports/main amd64 Packages[40.6 kB]
Get:29 http://archive.ubuntu.com/ubuntu noble-backports/main amd64 Components [5,760 B]
Get:30 http://archive.ubuntu.com/ubuntu noble-backports/main amd64 c-n-f Metadata [368 B]
Get:31 http://archive.ubuntu.com/ubuntu noble-backports/restricted amd64 c-n-f Metadata [116 B]
Get:32 http://archive.ubuntu.com/ubuntu noble-backports/universe amd64 Packages [31.0 kB]
Get:33 http://archive.ubuntu.com/ubuntu noble-backports/universe Translation-en [18.6 kB]
Get:34 http://security.ubuntu.com/ubuntu noble-security/main amd64 Packages[1,146 kB]
Get:35 http://archive.ubuntu.com/ubuntu noble-backports/universe amd64 Components [12.6 kB]
Get:36 http://archive.ubuntu.com/ubuntu noble-backports/universe amd64 c-n-f Metadata [1,588 B]
Get:37 http://archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 Packages [748 B]
Get:38 http://archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 c-n-f Metadata [116 B]
Get:39 http://security.ubuntu.com/ubuntu noble-security/main Translation-en[231 kB]
Get:40 http://security.ubuntu.com/ubuntu noble-security/main amd64 Components [46.3 kB]
Get:41 http://security.ubuntu.com/ubuntu noble-security/main amd64 c-n-f Metadata [11.9 kB]
Get:42 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Packages [1,713 kB]
Get:43 http://security.ubuntu.com/ubuntu noble-security/restricted Translation-en [392 kB]
Get:44 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 c-n-f Metadata [444 B]
Get:45 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Packages [1,223 kB]
Get:46 http://security.ubuntu.com/ubuntu noble-security/universe Translation-en [246 kB]
Get:47 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Components [76.3 kB]
Get:48 http://security.ubuntu.com/ubuntu noble-security/universe amd64 c-n-f Metadata [24.2 kB]
Get:49 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Packages [45.4 kB]
Get:50 http://security.ubuntu.com/ubuntu noble-security/multiverse Translation-en [12.1 kB]
Get:51 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 c-n-f Metadata [468 B]
Fetched 14.0 MB in 16s (862 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
110 packages can be upgraded. Run 'apt list --upgradable' to see them.
```

```
ansible@ubuntu24pxe1:~$ exit
logout
Connection to 192.168.0.10 closed.
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ ansible-playbook playbook-all-apache.yml -i inventory.ini
[WARNING]: Invalid characters were found in group names but not replaced, use -vvvv to see details

PLAY [Install apache on all web servers] ***************************************

TASK [Gathering Facts] *********************************************************
[WARNING]: Host 'pxe_server' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpretercould cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.
ok: [pxe_server]
[WARNING]: Host 'pxe_client' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpretercould cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.
ok: [pxe_client]

TASK [installApache : debug] ***************************************************
ok: [pxe_server] => {
    "msg": "Running tasks for  OS Family: Debian"
}
ok: [pxe_client] => {
    "msg": "Running tasks for  OS Family: Debian"
}

TASK [installApache : Load OS specific tasks (RHEL)] ***************************
skipping: [pxe_server]
skipping: [pxe_client]

TASK [installApache : Load OS specific tasks (Debian)] *************************
included: /vagrant/ansible/project-ansible2-2/roles/installApache/tasks/Debian.yml for pxe_server, pxe_client

TASK [installApache : install apache2] *****************************************
ok: [pxe_server]
changed: [pxe_client]

TASK [installApache : Start Apache] ********************************************
[ERROR]: Task failed: Module failed: Unable to start service apache2: Job for apache2.service failed because the control process exited with error code.
See "systemctl status apache2.service" and "journalctl -xeu apache2.service" for details.

Origin: /vagrant/ansible/project-ansible2-2/roles/installApache/tasks/Debian.yml:10:7

 8       become: true
 9
10     - name: Start Apache
         ^ column 7

fatal: [pxe_server]: FAILED! => {"changed": false, "msg": "Unable to start service apache2: Job for apache2.service failed because the control process exited with error code.\nSee \"systemctl status apache2.service\" and \"journalctl -xeu apache2.service\" for details.\n"}
ok: [pxe_client]

TASK [Run apt update] **********************************************************
changed: [pxe_client]

TASK [Copy file from controller to remote host] ********************************
changed: [pxe_client]

PLAY RECAP *********************************************************************
pxe_client                 : ok=7    changed=3    unreachable=0    failed=0   skipped=1    rescued=0    ignored=0
pxe_server                 : ok=4    changed=0    unreachable=0    failed=1   skipped=1    rescued=0    ignored=0
````

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ sudo systemctl status apache2 --no-pager -l
× apache2.service - The Apache HTTP Server
     Loaded: loaded (/usr/lib/systemd/system/apache2.service; enabled; preset: enabled)
     Active: failed (Result: exit-code) since Tue 2026-10-27 01:21:01 UTC; 1min 20s ago
       Docs: https://httpd.apache.org/docs/2.4/
    Process: 2997 ExecStart=/usr/sbin/apachectl start (code=exited, status=1/FAILURE)
        CPU: 36ms

Oct 27 01:21:01 pxe-server systemd[1]: Starting apache2.service - The Apache HTTP Server...
Oct 27 01:21:01 pxe-server apachectl[2999]: AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.2.1. Set the 'ServerName' directive globally to suppress this message
Oct 27 01:21:01 pxe-server apachectl[2999]: (98)Address already in use: AH00072: make_sock: could not bind to address [::]:80
Oct 27 01:21:01 pxe-server apachectl[2999]: (98)Address already in use: AH00072: make_sock: could not bind to address 0.0.0.0:80
Oct 27 01:21:01 pxe-server apachectl[2999]: no listening sockets available,shutting down
Oct 27 01:21:01 pxe-server apachectl[2999]: AH00015: Unable to open logs
Oct 27 01:21:01 pxe-server systemd[1]: apache2.service: Control process exited, code=exited, status=1/FAILURE
Oct 27 01:21:01 pxe-server systemd[1]: apache2.service: Failed with result 'exit-code'.
Oct 27 01:21:01 pxe-server systemd[1]: Failed to start apache2.service - The Apache HTTP Server.
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ sudo apache2ctl configtest
AH00558: apache2: Could not reliably determine the server's fully qualifieddomain name, using 127.0.2.1. Set the 'ServerName' directive globally to suppress this message
Syntax OK
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ sudo journalctl -u apache2 -n 40 --no-pager
Oct 26 12:48:42 pxe-server apachectl[4708]: no listening sockets available,shutting down
Oct 26 12:48:42 pxe-server apachectl[4708]: AH00015: Unable to open logs
Oct 26 12:48:42 pxe-server systemd[1]: apache2.service: Control process exited, code=exited, status=1/FAILURE
Oct 26 12:48:42 pxe-server systemd[1]: apache2.service: Failed with result 'exit-code'.
Oct 26 12:48:42 pxe-server systemd[1]: Failed to start apache2.service - The Apache HTTP Server.
-- Boot 989907b416314caeb2cb6f9c25b1311e --
Oct 26 23:34:40 pxe-server systemd[1]: Starting apache2.service - The Apache HTTP Server...
Oct 26 23:34:48 pxe-server apachectl[755]: AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.2.1. Set the 'ServerName' directive globally to suppress this message
Oct 26 23:34:48 pxe-server systemd[1]: Started apache2.service - The ApacheHTTP Server.
Oct 27 00:16:50 pxe-server systemd[1]: Stopping apache2.service - The Apache HTTP Server...
Oct 27 00:16:51 pxe-server apachectl[2533]: AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.2.1. Set the 'ServerName' directive globally to suppress this message
Oct 27 00:16:51 pxe-server systemd[1]: apache2.service: Deactivated successfully.
Oct 27 00:16:51 pxe-server systemd[1]: Stopped apache2.service - The ApacheHTTP Server.
Oct 27 00:16:51 pxe-server systemd[1]: apache2.service: Consumed 2.048s CPUtime, 7.9M memory peak, 0B memory swap peak.
-- Boot 42c41d7e8224408fa3a7e3e3cd6032c1 --
Oct 27 00:20:37 pxe-server systemd[1]: Starting apache2.service - The Apache HTTP Server...
Oct 27 00:20:41 pxe-server apachectl[987]: AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.2.1. Set the 'ServerName' directive globally to suppress this message
Oct 27 00:20:41 pxe-server apachectl[987]: (98)Address already in use: AH00072: make_sock: could not bind to address [::]:80
Oct 27 00:20:41 pxe-server apachectl[987]: (98)Address already in use: AH00072: make_sock: could not bind to address 0.0.0.0:80
Oct 27 00:20:41 pxe-server apachectl[987]: no listening sockets available, shutting down
Oct 27 00:20:41 pxe-server apachectl[987]: AH00015: Unable to open logs
Oct 27 00:20:41 pxe-server systemd[1]: apache2.service: Control process exited, code=exited, status=1/FAILURE
Oct 27 00:20:41 pxe-server systemd[1]: apache2.service: Failed with result 'exit-code'.
Oct 27 00:20:41 pxe-server systemd[1]: Failed to start apache2.service - The Apache HTTP Server.
Oct 27 00:40:02 pxe-server systemd[1]: Starting apache2.service - The Apache HTTP Server...
Oct 27 00:40:02 pxe-server apachectl[2359]: AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.2.1. Set the 'ServerName' directive globally to suppress this message
Oct 27 00:40:02 pxe-server apachectl[2359]: (98)Address already in use: AH00072: make_sock: could not bind to address [::]:80
Oct 27 00:40:02 pxe-server apachectl[2359]: (98)Address already in use: AH00072: make_sock: could not bind to address 0.0.0.0:80
Oct 27 00:40:02 pxe-server apachectl[2359]: no listening sockets available,shutting down
Oct 27 00:40:02 pxe-server apachectl[2359]: AH00015: Unable to open logs
Oct 27 00:40:02 pxe-server systemd[1]: apache2.service: Control process exited, code=exited, status=1/FAILURE
Oct 27 00:40:02 pxe-server systemd[1]: apache2.service: Failed with result 'exit-code'.
Oct 27 00:40:02 pxe-server systemd[1]: Failed to start apache2.service - The Apache HTTP Server.
Oct 27 01:21:01 pxe-server systemd[1]: Starting apache2.service - The Apache HTTP Server...
Oct 27 01:21:01 pxe-server apachectl[2999]: AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.2.1. Set the 'ServerName' directive globally to suppress this message
Oct 27 01:21:01 pxe-server apachectl[2999]: (98)Address already in use: AH00072: make_sock: could not bind to address [::]:80
Oct 27 01:21:01 pxe-server apachectl[2999]: (98)Address already in use: AH00072: make_sock: could not bind to address 0.0.0.0:80
Oct 27 01:21:01 pxe-server apachectl[2999]: no listening sockets available,shutting down
Oct 27 01:21:01 pxe-server apachectl[2999]: AH00015: Unable to open logs
Oct 27 01:21:01 pxe-server systemd[1]: apache2.service: Control process exited, code=exited, status=1/FAILURE
Oct 27 01:21:01 pxe-server systemd[1]: apache2.service: Failed with result 'exit-code'.
Oct 27 01:21:01 pxe-server systemd[1]: Failed to start apache2.service - The Apache HTTP Server.
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ sudo ss -ltnp 'sport = :80'
State    Recv-Q   Send-Q       Local Address:Port       Peer Address:PortProcess
LISTEN   0        511                0.0.0.0:80              0.0.0.0:* users:(("nginx",pid=994,fd=5),("nginx",pid=992,fd=5))
LISTEN   0        511                   [::]:80                 [::]:* users:(("nginx",pid=994,fd=6),("nginx",pid=992,fd=6))
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ sudo lsof -i :80
COMMAND PID     USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
nginx   992     root    5u  IPv4   9252      0t0  TCP *:http (LISTEN)
nginx   992     root    6u  IPv6   9253      0t0  TCP *:http (LISTEN)
nginx   994 www-data    5u  IPv4   9252      0t0  TCP *:http (LISTEN)
nginx   994 www-data    6u  IPv6   9253      0t0  TCP *:http (LISTEN)
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ sudo systemctl status nginx --no-pager -l
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled)
     Active: active (running) since Tue 2026-10-27 00:20:40 UTC; 1h 3min ago
       Docs: man:nginx(8)
   Main PID: 992 (nginx)
      Tasks: 2 (limit: 2264)
     Memory: 3.0M (peak: 3.2M)
        CPU: 117ms
     CGroup: /system.slice/nginx.service
             ├─992 "nginx: master process /usr/sbin/nginx -g daemon on; master_process on;"
             └─994 "nginx: worker process"

Oct 27 00:20:37 pxe-server systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...
Oct 27 00:20:40 pxe-server systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.
```
```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ grep -Rni nginx .
```
```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ sudo systemctl stopnginx
```
```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ sudo systemctl disable nginx
Synchronizing state of nginx.service with SysV service script with /usr/lib/systemd/systemd-sysv-install.
Executing: /usr/lib/systemd/systemd-sysv-install disable nginx
Removed "/etc/systemd/system/multi-user.target.wants/nginx.service".
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ sudo systemctl start apache2
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ sudo systemctl status apache2 --no-pager -l
● apache2.service - The Apache HTTP Server
     Loaded: loaded (/usr/lib/systemd/system/apache2.service; enabled; preset: enabled)
     Active: active (running) since Tue 2026-10-27 01:24:45 UTC; 5s ago
       Docs: https://httpd.apache.org/docs/2.4/
    Process: 3233 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
   Main PID: 3236 (apache2)
      Tasks: 55 (limit: 2264)
     Memory: 5.1M (peak: 5.4M)
        CPU: 95ms
     CGroup: /system.slice/apache2.service
             ├─3236 /usr/sbin/apache2 -k start
             ├─3237 /usr/sbin/apache2 -k start
             └─3238 /usr/sbin/apache2 -k start

Oct 27 01:24:44 pxe-server systemd[1]: Starting apache2.service - The Apache HTTP Server...
Oct 27 01:24:45 pxe-server apachectl[3235]: AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 127.0.2.1. Set the 'ServerName' directive globally to suppress this message
Oct 27 01:24:45 pxe-server systemd[1]: Started apache2.service - The ApacheHTTP Server.
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ ansible-playbook playbook-all-apache.yml -i inventory.ini
[WARNING]: Invalid characters were found in group names but not replaced, use -vvvv to see details

PLAY [Install apache on all web servers] ***************************************

TASK [Gathering Facts] *********************************************************
[WARNING]: Host 'pxe_server' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpretercould cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.
ok: [pxe_server]
[WARNING]: Host 'pxe_client' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpretercould cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.
ok: [pxe_client]

TASK [installApache : debug] ***************************************************
ok: [pxe_server] => {
    "msg": "Running tasks for  OS Family: Debian"
}
ok: [pxe_client] => {
    "msg": "Running tasks for  OS Family: Debian"
}

TASK [installApache : Load OS specific tasks (RHEL)] ***************************
skipping: [pxe_server]
skipping: [pxe_client]

TASK [installApache : Load OS specific tasks (Debian)] *************************
included: /vagrant/ansible/project-ansible2-2/roles/installApache/tasks/Debian.yml for pxe_client, pxe_server

TASK [installApache : install apache2] *****************************************
ok: [pxe_server]
ok: [pxe_client]

TASK [installApache : Start Apache] ********************************************
ok: [pxe_server]
ok: [pxe_client]

TASK [Run apt update] **********************************************************
ok: [pxe_server]
changed: [pxe_client]

TASK [Copy file from controller to remote host] ********************************
changed: [pxe_server]
ok: [pxe_client]

PLAY RECAP *********************************************************************
pxe_client                 : ok=7    changed=1    unreachable=0    failed=0   skipped=1    rescued=0    ignored=0
pxe_server                 : ok=7    changed=1    unreachable=0    failed=0   skipped=1    rescued=0    ignored=0
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ sudo systemctl is-active apache2
active
```

```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$ ssh 192.168.0.10
ansible@192.168.0.10's password:
Welcome to Ubuntu 24.04.5 LTS (GNU/Linux 6.8.0-139-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Tue 27 Oct 01:26:43 UTC 2026

  System load:             0.17
  Usage of /:              11.0% of 60.72GB
  Memory usage:            2%
  Swap usage:              0%
  Processes:               133
  Users logged in:         0
  IPv4 address for enp0s8: 10.0.3.15
  IPv6 address for enp0s8: fd17:625c:f037:3:a00:27ff:feda:16d3


Expanded Security Maintenance for Applications is not enabled.

117 updates can be applied immediately.
92 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status

Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings


Last login: Tue Oct 27 01:25:34 2026 from 192.168.0.254
```

```
ansible@ubuntu24pxe1:~$ sudo systemctl is-active apache2
active
```

```
ansible@ubuntu24pxe1:~$ exit
logout
Connection to 192.168.0.10 closed.
```
```
ansible@pxe-server:/vagrant/ansible/project-ansible2-2$
```
