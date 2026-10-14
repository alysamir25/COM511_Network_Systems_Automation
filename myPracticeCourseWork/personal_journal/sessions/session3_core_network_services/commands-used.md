```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session3\vagrant-examples\example3-1> vagrant status
Current machine states:

ansible_controller        running (virtualbox)
ubuntu_1                  running (virtualbox)
ubuntu_2                  running (virtualbox)
ubuntu_bind               running (virtualbox)

This environment represents multiple VMs. The VMs are all listed
above with their current state. For more information about a specific
VM, run `vagrant status NAME`.
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session3\vagrant-examples\example3-1> vagrant ssh ansible_controller
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct 14 09:49:19 AM UTC 2026

  System load:           0.14
  Usage of /:            16.3% of 30.34GB
  Memory usage:          30%
  Swap usage:            0%
  Processes:             130
  Users logged in:       0
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
vagrant@ansible-controller:~$ sudo su ansible
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.
```

```
ansible@ansible-controller:/home/vagrant$ ssh 192.168.100.254
The authenticity of host '192.168.100.254 (192.168.100.254)' can't be established.
ED25519 key fingerprint is SHA256:VjufUgJCRplYbNSq6ATc0g/DLpYxoTbOJ7Eaml2Enlc.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '192.168.100.254' (ED25519) to the list of known hosts.
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct 14 09:55:09 AM UTC 2026

  System load:           0.13
  Usage of /:            16.3% of 30.34GB
  Memory usage:          31%
  Swap usage:            0%
  Processes:             140
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
```

```
ansible@ansible-controller:~$ exit
logout
Connection to 192.168.100.254 closed.
```
Running the example
```
ansible@ansible-controller:/home/vagrant$ cd /vagrant/ansible/project-ansible3-1
```

```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ ls -al
total 18
drwxrwxrwx 1 vagrant vagrant 4096 Oct 14 07:57 .
drwxrwxrwx 1 vagrant vagrant    0 Oct 14 07:57 ..
-rwxrwxrwx 1 vagrant vagrant  904 Oct 14 07:51 ansible.cfg
drwxrwxrwx 1 vagrant vagrant    0 Oct 14 07:57 inventory
-rwxrwxrwx 1 vagrant vagrant  606 Oct 14 07:51 README.md
drwxrwxrwx 1 vagrant vagrant    0 Oct 14 07:57 roles
-rwxrwxrwx 1 vagrant vagrant  285 Oct 14 07:51 setup-dnsmasq-server.yml
-rwxrwxrwx 1 vagrant vagrant 1048 Oct 14 07:51 setup-guest-dns.yml
drwxrwxrwx 1 vagrant vagrant 4096 Oct 14 07:57 templates
```

```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ ansible-playbook -i inventory/dev/hosts.ini  setup-dnsmasq-server.yml
[WARNING]: Ansible is being run in a world writable directory (/vagrant/ansible/project-ansible3-1), ignoring it as an ansible.cfg source. For more information see https://docs.ansible.com/ansible/devel/reference_appendices/config.html#cfg-in-world-writable-dir

PLAY [Configure DHCP and DNS server] *******************************************

TASK [Gathering Facts] *********************************************************
[WARNING]: Host 'ansible-controller' is using the discovered Python interpreter at '/usr/bin/python3.12', but future installation of another Python interpreter could cause a different interpreter to be discovered. See https://docs.ansible.com/ansible-core/2.21/reference_appendices/interpreter_discovery.html for more information.
ok: [ansible-controller]

TASK [dnsmasq-config : Install dnsmasq server packages] ************************
changed: [ansible-controller]

TASK [dnsmasq-config : remove systemd-resolved] ********************************
changed: [ansible-controller]

TASK [dnsmasq-config : Deploy dnsmasq.conf] ************************************
changed: [ansible-controller]

TASK [dnsmasq-config : Deploy DHCP reservations] *******************************
changed: [ansible-controller]

TASK [dnsmasq-config : Capture DHCP reservations] ******************************
changed: [ansible-controller]

TASK [dnsmasq-config : Display DHCP reservations to console] *******************
ok: [ansible-controller] => {
    "msg": [
        "# templates/dhcp-reservations.conf.j2",
        "# Static DHCP reservations",
        "dhcp-host=08:00:27:FF:FF:A2,192.168.100.254,ansible-controller",
        "dhcp-host=08:00:27:FF:FF:A2,192.168.100.10,ubuntu-1",
        "dhcp-host=08:00:27:FF:FF:A3,192.168.100.20,ubuntu-2"
    ]
}

TASK [dnsmasq-config : Deploy local DNS entries] *******************************
changed: [ansible-controller]

TASK [dnsmasq-config : Capture local DNS entries] ******************************
changed: [ansible-controller]

TASK [dnsmasq-config : Display local DNS entries to console] *******************
ok: [ansible-controller] => {
    "msg": [
        "# templates/local-dns.conf.j2",
        "# Local DNS entries from inventory",
        "address=/ansible-controller.lab.example.com/192.168.100.254",
        "address=/ansible-controller-eth1.lab.example.com/192.168.100.254",
        "address=/ubuntu-1.lab.example.com/192.168.100.10",
        "address=/ubuntu-1-eth1.lab.example.com/192.168.100.10",
        "address=/ubuntu-2.lab.example.com/192.168.100.20",
        "address=/ubuntu-2-eth1.lab.example.com/192.168.100.20",
        "",
        "# Additional DNS entries",
        "",
        "# CNAME aliases"
    ]
}

TASK [dnsmasq-config : Start Dnsmasq] ******************************************
changed: [ansible-controller]

RUNNING HANDLER [restart dnsmasq] **********************************************
changed: [ansible-controller]

PLAY RECAP *********************************************************************
ansible-controller         : ok=12   changed=9    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

```

check the state of dnsmasq using
```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ sudo systemctl status dnsmasq
● dnsmasq.service - dnsmasq - A lightweight DHCP and caching DNS server
     Loaded: loaded (/usr/lib/systemd/system/dnsmasq.service; enabled; pres>
     Active: active (running) since Wed 2026-10-14 10:03:43 UTC; 47s ago
    Process: 4709 ExecStartPre=/usr/share/dnsmasq/systemd-helper checkconfi>
    Process: 4716 ExecStart=/usr/share/dnsmasq/systemd-helper exec (code=ex>
    Process: 4723 ExecStartPost=/usr/share/dnsmasq/systemd-helper start-res>
   Main PID: 4721 (dnsmasq)
      Tasks: 1 (limit: 1057)
     Memory: 880.0K (peak: 2.3M)
        CPU: 906ms
     CGroup: /system.slice/dnsmasq.service
             └─4721 /usr/sbin/dnsmasq -x /run/dnsmasq/dnsmasq.pid -u dnsmas>

Oct 14 10:03:42 ansible-controller systemd[1]: Starting dnsmasq.service - d>
Oct 14 10:03:43 ansible-controller resolvconf[4729]: Dropped protocol speci>
Oct 14 10:03:43 ansible-controller resolvconf[4729]: Failed to set DNS conf>
Oct 14 10:03:43 ansible-controller systemd[1]: Started dnsmasq.service - dn>
...skipping...
● dnsmasq.service - dnsmasq - A lightweight DHCP and caching DNS server
     Loaded: loaded (/usr/lib/systemd/system/dnsmasq.service; enabled; pres>
     Active: active (running) since Wed 2026-10-14 10:03:43 UTC; 47s ago
    Process: 4709 ExecStartPre=/usr/share/dnsmasq/systemd-helper checkconfi>
    Process: 4716 ExecStart=/usr/share/dnsmasq/systemd-helper exec (code=ex>
    Process: 4723 ExecStartPost=/usr/share/dnsmasq/systemd-helper start-res>
   Main PID: 4721 (dnsmasq)
      Tasks: 1 (limit: 1057)
     Memory: 880.0K (peak: 2.3M)
        CPU: 906ms
     CGroup: /system.slice/dnsmasq.service
             └─4721 /usr/sbin/dnsmasq -x /run/dnsmasq/dnsmasq.pid -u dnsmas>

Oct 14 10:03:42 ansible-controller systemd[1]: Starting dnsmasq.service - d>
Oct 14 10:03:43 ansible-controller resolvconf[4729]: Dropped protocol speci>
Oct 14 10:03:43 ansible-controller resolvconf[4729]: Failed to set DNS conf>
Oct 14 10:03:43 ansible-controller systemd[1]: Started dnsmasq.service - dn>
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
~
~
~
~
~
~
~
~
~
lines 1-17/17 (END)
```

```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ sudo cat /et
c/dnsmasq.conf
# templates/dnsmasq.conf.j2
# Managed by Ansible

# Interface binding
interface=eth1
bind-interfaces

# Domain
domain=lab.example.com
local=/lab.example.com/

# DHCP
dhcp-range=192.168.100.210,192.168.100.230,1h
dhcp-option=option:router,192.168.100.254
dhcp-option=option:dns-server,10.0.2.15
dhcp-option=option:domain-name,lab.example.com
dhcp-option=option:ntp-server,10.0.2.15
dhcp-authoritative

# removed dhcp-leasefile option to avoid permission issues with dnsmasq running as non-root user
# defaults to /var/lib/misc/dnsmasq.leases when not specified
#dhcp-leasefile=/var/lib/dnsmasq/dnsmasq.leases

# DNS
server=10.0.2.3
server=8.8.8.8

# Logging
log-dhcp
log-queries
log-facility=/var/log/dnsmasq.log

# Security
bogus-priv
domain-needed
no-resolv
no-poll

# Cache
cache-size=1000

# Include additional configs
conf-dir=/etc/dnsmasq.d/,*.conf
```

```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ sudo cat /et
c/dnsmasq.d/reservations.conf
# templates/dhcp-reservations.conf.j2
# Static DHCP reservations
dhcp-host=08:00:27:FF:FF:A2,192.168.100.254,ansible-controller
dhcp-host=08:00:27:FF:FF:A2,192.168.100.10,ubuntu-1
dhcp-host=08:00:27:FF:FF:A3,192.168.100.20,ubuntu-2
```

```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ sudo cat /etc/dnsmasq.d/local-dns.conf
# templates/local-dns.conf.j2
# Local DNS entries from inventory
address=/ansible-controller.lab.example.com/192.168.100.254
address=/ansible-controller-eth1.lab.example.com/192.168.100.254
address=/ubuntu-1.lab.example.com/192.168.100.10
address=/ubuntu-1-eth1.lab.example.com/192.168.100.10
address=/ubuntu-2.lab.example.com/192.168.100.20
address=/ubuntu-2-eth1.lab.example.com/192.168.100.20

# Additional DNS entries

# CNAME aliases
```
When running, Dnsmasq stores its current leases in the file /var/lib/misc/dnsmasq.leases
the dnsmasq.leases fields in order are:

Time of lease expiry, in epoch time (seconds since 1970).
MAC address.
IP address.
Computer name, if known. This is always unqualified (no domain part)
Client-ID, if known. The client-ID is used as the computer's unique-ID in preference to the MAC address, if it's available. Some DHCP clients provide it, and some don't. The ones that do normally derive it from the MAC address unless explicity configured, but it could be something like a serial number, which would protect a computer from losing its identify if the network interface were replaced.
```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ sudo cat /var/lib/misc/dnsmasq.leases
1791975837 08:00:27:ff:ff:a3 192.168.100.20 ubuntu-2 ff:af:81:8f:7d:00:02:00:00:ab:11:4a:c3:0f:ac:01:d8:86:dd
1791975836 08:00:27:ff:ff:a2 192.168.100.10 ubuntu-1 ff:af:81:8f:7d:00:02:00:00:ab:11:8a:05:92:21:39:ca:c6:9a
```
I am now able to ping the servers and ssh into them using through the internal dhcp_network using the credentials user: admin password: minad1234
```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ ping 192.168.100.254
PING 192.168.100.254 (192.168.100.254) 56(84) bytes of data.
64 bytes from 192.168.100.254: icmp_seq=1 ttl=64 time=0.493 ms
64 bytes from 192.168.100.254: icmp_seq=2 ttl=64 time=0.060 ms
64 bytes from 192.168.100.254: icmp_seq=3 ttl=64 time=0.045 ms
64 bytes from 192.168.100.254: icmp_seq=4 ttl=64 time=0.076 ms
64 bytes from 192.168.100.254: icmp_seq=5 ttl=64 time=0.070 ms
64 bytes from 192.168.100.254: icmp_seq=6 ttl=64 time=0.057 ms
64 bytes from 192.168.100.254: icmp_seq=7 ttl=64 time=0.070 ms
64 bytes from 192.168.100.254: icmp_seq=8 ttl=64 time=0.076 ms
64 bytes from 192.168.100.254: icmp_seq=9 ttl=64 time=0.066 ms
64 bytes from 192.168.100.254: icmp_seq=10 ttl=64 time=0.082 ms
64 bytes from 192.168.100.254: icmp_seq=11 ttl=64 time=0.060 ms
64 bytes from 192.168.100.254: icmp_seq=12 ttl=64 time=0.078 ms
64 bytes from 192.168.100.254: icmp_seq=13 ttl=64 time=0.094 ms
64 bytes from 192.168.100.254: icmp_seq=14 ttl=64 time=0.070 ms
64 bytes from 192.168.100.254: icmp_seq=15 ttl=64 time=0.086 ms
^C
--- 192.168.100.254 ping statistics ---
15 packets transmitted, 15 received, 0% packet loss, time 14307ms
rtt min/avg/max/mdev = 0.045/0.098/0.493/0.106 ms
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ ping 192.168.100.20
PING 192.168.100.20 (192.168.100.20) 56(84) bytes of data.
64 bytes from 192.168.100.20: icmp_seq=1 ttl=64 time=1.98 ms
64 bytes from 192.168.100.20: icmp_seq=2 ttl=64 time=1.64 ms
64 bytes from 192.168.100.20: icmp_seq=3 ttl=64 time=3.32 ms
^C
--- 192.168.100.20 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2006ms
rtt min/avg/max/mdev = 1.640/2.312/3.318/0.724 ms
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ ping 192.168.100.30
PING 192.168.100.30 (192.168.100.30) 56(84) bytes of data.
From 192.168.100.254 icmp_seq=1 Destination Host Unreachable
From 192.168.100.254 icmp_seq=2 Destination Host Unreachable
From 192.168.100.254 icmp_seq=3 Destination Host Unreachable
^C
--- 192.168.100.30 ping statistics ---
5 packets transmitted, 0 received, +3 errors, 100% packet loss, time 4136ms
pipe 4
```
# BLOCKER
To test the DHCP server by simulating a DHCP request from ansible controller using the nmap utility, it did not return any hosts up.
```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ sudo nmap --script broadcast-dhcp-discover -e eth1
Starting Nmap 7.94SVN ( https://nmap.org ) at 2026-10-14 10:18 UTC
WARNING: No targets were specified, so 0 hosts scanned.
Nmap done: 0 IP addresses (0 hosts up) scanned in 12.19 seconds
```

I thought it is because I did not ssh to the hosts, so I did that
```
ansible@ansible-controller:/home/vagrant$ ssh 192.168.100.20
The authenticity of host '192.168.100.20 (192.168.100.20)' can't be established.
ED25519 key fingerprint is SHA256:VjufUgJCRplYbNSq6ATc0g/DLpYxoTbOJ7Eaml2Enlc.
This host key is known by the following other names/addresses:
    ~/.ssh/known_hosts:1: [hashed name]
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '192.168.100.20' (ED25519) to the list of known hosts.
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct 14 10:22:51 AM UTC 2026

  System load:           0.09
  Usage of /:            14.8% of 30.34GB
  Memory usage:          22%
  Swap usage:            0%
  Processes:             127
  Users logged in:       0
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

ansible@ubuntu-2:~$ exit
logout
Connection to 192.168.100.20 closed.
```
But to ubuntu-2, I wasn't able to ssh
```
ansible@ansible-controller:/home/vagrant$ ssh 192.168.100.30
ssh: connect to host 192.168.100.30 port 22: No route to host
ansible@ansible-controller:/home/vagrant$ ssh 192.168.100.30
ssh: connect to host 192.168.100.30 port 22: No route to host
```
I figured out why, I was using the wrong ip address
```
ansible@ansible-controller:/home/vagrant$ ssh 192.168.100.10
The authenticity of host '192.168.100.10 (192.168.100.10)' can't be established.
ED25519 key fingerprint is SHA256:VjufUgJCRplYbNSq6ATc0g/DLpYxoTbOJ7Eaml2Enlc.
This host key is known by the following other names/addresses:
    ~/.ssh/known_hosts:1: [hashed name]
    ~/.ssh/known_hosts:4: [hashed name]
Are you sure you want to continue connecting (yes/no/[fingerprint])? YES
Warning: Permanently added '192.168.100.10' (ED25519) to the list of known hosts.
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct 14 10:42:00 AM UTC 2026

  System load:           0.08
  Usage of /:            14.8% of 30.34GB
  Memory usage:          22%
  Swap usage:            0%
  Processes:             128
  Users logged in:       0
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
```
```
ansible@ubuntu-1:~$ exit
logout
Connection to 192.168.100.10 closed.
```

I did run nmap script again and still did not show any hosts up
```
ansible@ansible-controller:/home/vagrant$ sudo nmap --script broadcast-dhcp-discover -e eth1
Starting Nmap 7.94SVN ( https://nmap.org ) at 2026-10-14 10:23 UTC
WARNING: No targets were specified, so 0 hosts scanned.
Nmap done: 0 IP addresses (0 hosts up) scanned in 11.26 seconds
```
I figured it out, I was running the command from the ansible controller which it is the dhcp server itself but I should run it from the other hosts, by running it from ubuntu-2, it worked
```
ansible@ansible-controller:/home/vagrant$ ssh 192.168.100.20
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct 14 10:33:55 AM UTC 2026

  System load:           0.25
  Usage of /:            14.8% of 30.34GB
  Memory usage:          22%
  Swap usage:            0%
  Processes:             130
  Users logged in:       0
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
Last login: Wed Oct 14 10:22:54 2026 from 192.168.100.254
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.
```
That confirms that the dhcp server is successfully up and running and it is seen by the hosts
```
ansible@ubuntu-2:~$ sudo nmap --script broadcast-dhcp-discover -e eth1
Starting Nmap 7.94SVN ( https://nmap.org ) at 2026-10-14 10:34 UTC
Pre-scan script results:
| broadcast-dhcp-discover:
|   Response 1 of 1:
|     Interface: eth1
|     IP Offered: 192.168.100.215
|     DHCP Message Type: DHCPOFFER
|     Server Identifier: 192.168.100.254
|     IP Address Lease Time: 1h00m00s
|     Renewal Time Vlue: 30ms
|     Rebinding Time Value: 52m30s
|     Subnet Mask: 255.255.255.0
|     Broadcast Address: 192.168.100.255
|     NTP Servers: 10.0.2.15
|     Domain Name: lab.example.com
|     Domain Name Server: 10.0.2.15
|_    Router: 192.168.100.254
WARNING: No targets were specified, so 0 hosts scanned.
Nmap done: 0 IP addresses (0 hosts up) scanned in 11.17 seconds
```
I wanted to experiment to change the hosts ip addresses
I checked the hosts.ini before changing
```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1/inventory/dev$ cat hosts.ini
[dns_server]
ansible-controller  eth0_ip=                  eth0_mac=                     eth1_ip=192.168.100.254                 eth1_mac=08:00:27:FF:FF:A2    ansible_host=192.168.100.254    ansibleport=22

[hosts]
ubuntu-1            eth0_ip=                  eth0_mac=                     eth1_ip=192.168.100.10                  eth1_mac=08:00:27:FF:FF:A2    ansible_host=192.168.100.10   ansible_port=22
ubuntu-2            eth0_ip=                  eth0_mac=                     eth1_ip=192.168.100.20                  eth1_mac=08:00:27:FF:FF:A3    ansible_host=192.168.100.20   ansible_port=22
```
I then opened the hosts.ini file in my text editor on widows, changed the ip address as follows, ubuntu-1 ip address 192.168.100.20 and ubuntu-2 ip address 192.168.100.30 and I check hosts.ini again after changing it
```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ cat cd /vagrant/ansible/project-ansible3-1/inventory/dev/hosts.ini
cat: cd: No such file or directory
[dns_server]
ansible-controller  eth0_ip=                  eth0_mac=                     eth1_ip=192.168.100.254                 eth1_mac=08:00:27:FF:FF:A2    ansible_host=192.168.100.254    ansibleport=22

[hosts]
ubuntu-1            eth0_ip=                  eth0_mac=                     eth1_ip=192.168.100.20                  eth1_mac=08:00:27:FF:FF:A2    ansible_host=192.168.100.10   ansible_port=22
ubuntu-2            eth0_ip=                  eth0_mac=                     eth1_ip=192.168.100.30                  eth1_mac=08:00:27:FF:FF:A3    ansible_host=192.168.100.20   ansible_port=22
```
I then had to stop dnsmasq, update it and remove the lease file as:
Stop dnsmasq
```
sudo systemctl stop dnsmasq
```
Update the dnsmasq configuration with ansible
```
sudo rm /var/lib/misc/dnsmasq.leases
```
Delete the dnsmasq leases file /var/lib/misc/dnsmasq.leases
```
sudo systemctl start dnsmasq
```
I also did reload the DHCP configuration for each client interface in turn by restarting the networking on each client
```
 sudo systemctl restart systemd-networkd
```
```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ sudo systemctl stop dnsmasq
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ sudo rm /var/lib/misc/dnsmasq.leases
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ sudo systemctl start dnsmasq
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$  sudo systemctl restart systemd-networkd
```
Checked if I can ssh to ubuntu-1 using its ip 192.168.100.20 and it did not worked
```
ansible@ansible-controller:/vagrant/ansible/project-ansible3-1$ ssh 192.168.100.20
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct 14 11:01:06 AM UTC 2026

  System load:           0.11
  Usage of /:            14.8% of 30.34GB
  Memory usage:          22%
  Swap usage:            0%
  Processes:             133
  Users logged in:       0
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
Last login: Wed Oct 14 10:33:57 2026 from 192.168.100.254
ansible@ubuntu-2:~$
```
I am restarting the actual virtual machines to request for a new ip address
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session3\vagrant-examples\example3-1> vagrant halt ubuntu_1
==> ubuntu_1: Attempting graceful shutdown of VM...
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session3\vagrant-examples\example3-1> vagrant halt ubuntu_2
==> ubuntu_2: Attempting graceful shutdown of VM...
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session3\vagrant-examples\example3-1> vagrant up ubuntu_1
Bringing machine 'ubuntu_1' up with 'virtualbox' provider...
==> ubuntu_1: Checking if box 'bento/ubuntu-24.04' version '202510.26.0' is up to date...
==> ubuntu_1: Clearing any previously set forwarded ports...
==> ubuntu_1: Fixed port collision for 22 => 2222. Now on port 2200.
==> ubuntu_1: Clearing any previously set network interfaces...
==> ubuntu_1: Preparing network interfaces based on configuration...
    ubuntu_1: Adapter 1: nat
    ubuntu_1: Adapter 2: intnet
==> ubuntu_1: Forwarding ports...
    ubuntu_1: 22 (guest) => 2200 (host) (adapter 1)
==> ubuntu_1: Running 'pre-boot' VM customizations...
==> ubuntu_1: Booting VM...
==> ubuntu_1: Waiting for machine to boot. This may take a few minutes...
    ubuntu_1: SSH address: 127.0.0.1:2200
    ubuntu_1: SSH username: vagrant
    ubuntu_1: SSH auth method: private key
==> ubuntu_1: Machine booted and ready!
==> ubuntu_1: Checking for guest additions in VM...
==> ubuntu_1: Setting hostname...
==> ubuntu_1: Configuring and enabling network interfaces...
==> ubuntu_1: Mounting shared folders...
    ubuntu_1: C:/devel/gitrepos/COM511_Network_Systems_Automation/myPracticeCourseWork/session3/vagrant-examples/example3-1 => /vagrant
==> ubuntu_1: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> ubuntu_1: flag to force provisioning. Provisioners marked to run always will still run.
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session3\vagrant-examples\example3-1> vagrant up ubuntu_2
Bringing machine 'ubuntu_2' up with 'virtualbox' provider...
==> ubuntu_2: Checking if box 'bento/ubuntu-24.04' version '202510.26.0' is up to date...
==> ubuntu_2: Clearing any previously set forwarded ports...
==> ubuntu_2: Fixed port collision for 22 => 2222. Now on port 2201.
==> ubuntu_2: Clearing any previously set network interfaces...
==> ubuntu_2: Preparing network interfaces based on configuration...
    ubuntu_2: Adapter 1: nat
    ubuntu_2: Adapter 2: intnet
==> ubuntu_2: Forwarding ports...
    ubuntu_2: 22 (guest) => 2201 (host) (adapter 1)
==> ubuntu_2: Running 'pre-boot' VM customizations...
==> ubuntu_2: Booting VM...
==> ubuntu_2: Waiting for machine to boot. This may take a few minutes...
    ubuntu_2: SSH address: 127.0.0.1:2201
    ubuntu_2: SSH username: vagrant
    ubuntu_2: SSH auth method: private key
==> ubuntu_2: Machine booted and ready!
==> ubuntu_2: Checking for guest additions in VM...
==> ubuntu_2: Setting hostname...
==> ubuntu_2: Configuring and enabling network interfaces...
==> ubuntu_2: Mounting shared folders...
    ubuntu_2: C:/devel/gitrepos/COM511_Network_Systems_Automation/myPracticeCourseWork/session3/vagrant-examples/example3-1 => /vagrant
==> ubuntu_2: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> ubuntu_2: flag to force provisioning. Provisioners marked to run always will still run.
```
Still did not work. I guess it is because I was editing hosts.ini and not inventory.ini. So I decided to leave it to try when I am on exercise 3.2
