Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Loading personal and system profiles took 706ms.

```
PS C:\Users\Admin> cd "C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1"
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1> vagrant up
Bringing machine 'docker_host' up with 'virtualbox' provider...
==> docker_host: Importing base box 'bento/ubuntu-24.04'...
==> docker_host: Matching MAC address for NAT networking...
==> docker_host: Checking if box 'bento/ubuntu-24.04' version '202510.26.0' is up to date...
==> docker_host: There was a problem while downloading the metadata for your box
==> docker_host: to check for updates. This is not an error, since it is usually due
==> docker_host: to temporary network problems. This is just a warning. The problem
==> docker_host: encountered was:
==> docker_host:
==> docker_host: schannel: failed to receive handshake, SSL/TLS connection failed
==> docker_host:
==> docker_host: If you want to check for box updates, verify your network connection
==> docker_host: is valid and try again.
==> docker_host: Setting the name of the VM: example5_1_docker_host_1793175318591_40491
==> docker_host: Clearing any previously set network interfaces...
==> docker_host: Preparing network interfaces based on configuration...
    docker_host: Adapter 1: nat
    docker_host: Adapter 2: hostonly
==> docker_host: Forwarding ports...
    docker_host: 22 (guest) => 2222 (host) (adapter 1)
==> docker_host: Running 'pre-boot' VM customizations...
==> docker_host: Booting VM...
==> docker_host: Waiting for machine to boot. This may take a few minutes...
    docker_host: SSH address: 127.0.0.1:2222
    docker_host: SSH username: vagrant
    docker_host: SSH auth method: private key
    docker_host:
    docker_host: Vagrant insecure key detected. Vagrant will automatically replace
    docker_host: this with a newly generated keypair for better security.
    docker_host:
    docker_host: Inserting generated public key within guest...
    docker_host: Removing insecure key from the guest if it's present...
    docker_host: Key inserted! Disconnecting and reconnecting using new SSH key...
==> docker_host: Machine booted and ready!
==> docker_host: Checking for guest additions in VM...
==> docker_host: Setting hostname...
==> docker_host: Configuring and enabling network interfaces...
==> docker_host: Mounting shared folders...
    docker_host: C:/devel/gitrepos/COM511_Network_Systems_Automation/myPracticeCourseWork/session5/vagrant-examples/example5_1 => /vagrant
==> docker_host: Running provisioner: shell...
    docker_host: Running: inline script
    docker_host: adding software to ubuntu
    docker_host: Get:1 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]
    docker_host: Hit:2 http://us.archive.ubuntu.com/ubuntu noble InRelease
    docker_host: Get:3 http://us.archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
    docker_host: Get:4 http://us.archive.ubuntu.com/ubuntu noble-backports InRelease [126 kB]
    docker_host: Get:5 http://security.ubuntu.com/ubuntu noble-security/main amd64 Packages [1,146 kB]
    docker_host: Get:6 http://security.ubuntu.com/ubuntu noble-security/main Translation-en [231 kB]
    docker_host: Get:7 http://security.ubuntu.com/ubuntu noble-security/main amd64 Components [46.4 kB]
    docker_host: Get:8 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Packages [1,713 kB]
    docker_host: Get:9 http://security.ubuntu.com/ubuntu noble-security/restricted Translation-en [392 kB]
    docker_host: Get:10 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Components [212 B]
    docker_host: Get:11 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Packages [1,223 kB]
    docker_host: Get:12 http://security.ubuntu.com/ubuntu noble-security/universe Translation-en [246 kB]
    docker_host: Get:13 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Components [76.3 kB]
    docker_host: Get:14 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Packages [45.4 kB]
    docker_host: Get:15 http://security.ubuntu.com/ubuntu noble-security/multiverse Translation-en [12.1 kB]
    docker_host: Get:16 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Components [208 B]
    docker_host: Get:17 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 Packages [1,406 kB]
    docker_host: Get:18 http://us.archive.ubuntu.com/ubuntu noble-updates/main Translation-en [310 kB]
    docker_host: Get:19 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 Components [181 kB]
    docker_host: Get:20 http://us.archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Packages [1,809 kB]
    docker_host: Get:21 http://us.archive.ubuntu.com/ubuntu noble-updates/restricted Translation-en [411 kB]
    docker_host: Get:22 http://us.archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Components [212 B]
    docker_host: Get:23 http://us.archive.ubuntu.com/ubuntu noble-updates/universe amd64 Packages [1,707 kB]
    docker_host: Get:24 http://us.archive.ubuntu.com/ubuntu noble-updates/universe Translation-en [343 kB]
    docker_host: Get:25 http://us.archive.ubuntu.com/ubuntu noble-updates/universe amd64 Components [388 kB]
    docker_host: Get:26 http://us.archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Packages [50.7 kB]
    docker_host: Get:27 http://us.archive.ubuntu.com/ubuntu noble-updates/multiverse Translation-en [14.3 kB]
    docker_host: Get:28 http://us.archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Components [940 B]
    docker_host: Get:29 http://us.archive.ubuntu.com/ubuntu noble-backports/main amd64 Packages [40.6 kB]
    docker_host: Get:30 http://us.archive.ubuntu.com/ubuntu noble-backports/main Translation-en [9,172 B]
    docker_host: Get:31 http://us.archive.ubuntu.com/ubuntu noble-backports/main amd64 Components [5,764 B]
    docker_host: Get:32 http://us.archive.ubuntu.com/ubuntu noble-backports/restricted amd64 Components [212 B]
    docker_host: Get:33 http://us.archive.ubuntu.com/ubuntu noble-backports/universe amd64 Packages [31.0 kB]
    docker_host: Get:34 http://us.archive.ubuntu.com/ubuntu noble-backports/universe Translation-en [18.6 kB]
    docker_host: Get:35 http://us.archive.ubuntu.com/ubuntu noble-backports/universe amd64 Components [12.6 kB]
    docker_host: Get:36 http://us.archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 Packages [748 B]
    docker_host: Get:37 http://us.archive.ubuntu.com/ubuntu noble-backports/multiverse Translation-en [340 B]
    docker_host: Get:38 http://us.archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 Components [212 B]
    docker_host: Fetched 12.3 MB in 10s (1,224 kB/s)
    docker_host: Reading package lists...
    docker_host: Reading package lists...
    docker_host: Building dependency tree...
    docker_host: Reading state information...
    docker_host: The following additional packages will be installed:
    docker_host:   git-man
    docker_host: Suggested packages:
    docker_host:   git-daemon-run | git-daemon-sysvinit git-doc git-email git-gui gitk gitweb
    docker_host:   git-cvs git-mediawiki git-svn
    docker_host: The following NEW packages will be installed:
    docker_host:   whois
    docker_host: The following packages will be upgraded:
    docker_host:   git git-man
    docker_host: 2 upgraded, 1 newly installed, 0 to remove and 244 not upgraded.
    docker_host: Need to get 4,833 kB of archives.
    docker_host: After this operation, 284 kB of additional disk space will be used.
    docker_host: Get:1 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 git-man all 1:2.43.0-1ubuntu7.4 [1,101 kB]
    docker_host: Get:2 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 git amd64 1:2.43.0-1ubuntu7.4 [3,681 kB]
    docker_host: Get:3 http://us.archive.ubuntu.com/ubuntu noble/main amd64 whois amd64 5.5.22 [51.7 kB]
    docker_host: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    docker_host: Fetched 4,833 kB in 1s (3,400 kB/s)
(Reading database ... 50821 files and directories currently installed.)
    docker_host: Preparing to unpack .../git-man_1%3a2.43.0-1ubuntu7.4_all.deb ...
    docker_host: Unpacking git-man (1:2.43.0-1ubuntu7.4) over (1:2.43.0-1ubuntu7.3) ...
    docker_host: Preparing to unpack .../git_1%3a2.43.0-1ubuntu7.4_amd64.deb ...
    docker_host: Unpacking git (1:2.43.0-1ubuntu7.4) over (1:2.43.0-1ubuntu7.3) ...
    docker_host: Selecting previously unselected package whois.
    docker_host: Preparing to unpack .../whois_5.5.22_amd64.deb ...
    docker_host: Unpacking whois (5.5.22) ...
    docker_host: Setting up whois (5.5.22) ...
    docker_host: Setting up git-man (1:2.43.0-1ubuntu7.4) ...
    docker_host: Setting up git (1:2.43.0-1ubuntu7.4) ...
    docker_host: Processing triggers for man-db (2.12.0-4build2) ...
    docker_host:
    docker_host: Running kernel seems to be up-to-date.
    docker_host:
    docker_host: No services need to be restarted.
    docker_host:
    docker_host: No containers need to be restarted.
    docker_host:
    docker_host: No user sessions are running outdated binaries.
    docker_host:
    docker_host: No VM guests are running outdated hypervisor (qemu) binaries on this host.
==> docker_host: Running provisioner: shell...
    docker_host: Running: inline script
    docker_host: Hit:1 http://security.ubuntu.com/ubuntu noble-security InRelease
    docker_host: Hit:2 http://us.archive.ubuntu.com/ubuntu noble InRelease
    docker_host: Hit:3 http://us.archive.ubuntu.com/ubuntu noble-updates InRelease
    docker_host: Hit:4 http://us.archive.ubuntu.com/ubuntu noble-backports InRelease
    docker_host: Reading package lists...
    docker_host: Reading package lists...
    docker_host: Building dependency tree...
    docker_host: Reading state information...
    docker_host: The following additional packages will be installed:
    docker_host:   python3-software-properties
    docker_host: Recommended packages:
    docker_host:   unattended-upgrades
    docker_host: The following packages will be upgraded:
    docker_host:   python3-software-properties software-properties-common
    docker_host: 2 upgraded, 0 newly installed, 0 to remove and 242 not upgraded.
    docker_host: Need to get 44.4 kB of archives.
    docker_host: After this operation, 0 B of additional disk space will be used.
    docker_host: Get:1 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 software-properties-common all 0.99.49.4 [14.4 kB]
    docker_host: Get:2 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 python3-software-properties all 0.99.49.4 [30.0 kB]
    docker_host: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    docker_host: Fetched 44.4 kB in 0s (91.2 kB/s)
(Reading database ... 50832 files and directories currently installed.)
    docker_host: Preparing to unpack .../software-properties-common_0.99.49.4_all.deb ...
    docker_host: Unpacking software-properties-common (0.99.49.4) over (0.99.49.3) ...
    docker_host: Preparing to unpack .../python3-software-properties_0.99.49.4_all.deb ...
    docker_host: Unpacking python3-software-properties (0.99.49.4) over (0.99.49.3) ...
    docker_host: Setting up python3-software-properties (0.99.49.4) ...
    docker_host: Setting up software-properties-common (0.99.49.4) ...
    docker_host: Processing triggers for man-db (2.12.0-4build2) ...
    docker_host: Processing triggers for dbus (1.14.10-4ubuntu4.1) ...
    docker_host:
    docker_host: Running kernel seems to be up-to-date.
    docker_host:
    docker_host: No services need to be restarted.
    docker_host:
    docker_host: No containers need to be restarted.
    docker_host:
    docker_host: No user sessions are running outdated binaries.
    docker_host:
    docker_host: No VM guests are running outdated hypervisor (qemu) binaries on this host.
    docker_host: Hit:1 http://security.ubuntu.com/ubuntu noble-security InRelease
    docker_host: Get:2 https://ppa.launchpadcontent.net/ansible/ansible/ubuntu noble InRelease [17.8 kB]
    docker_host: Hit:3 http://us.archive.ubuntu.com/ubuntu noble InRelease
    docker_host: Hit:4 http://us.archive.ubuntu.com/ubuntu noble-updates InRelease
    docker_host: Hit:5 http://us.archive.ubuntu.com/ubuntu noble-backports InRelease
    docker_host: Get:6 https://ppa.launchpadcontent.net/ansible/ansible/ubuntu noble/main amd64 Packages [932 B]
    docker_host: Get:7 https://ppa.launchpadcontent.net/ansible/ansible/ubuntu noble/main Translation-en [472 B]
    docker_host: Fetched 19.2 kB in 4s (4,407 B/s)
    docker_host: Reading package lists...
    docker_host: Repository: 'Types: deb
    docker_host: URIs: https://ppa.launchpadcontent.net/ansible/ansible/ubuntu/
    docker_host: Suites: noble
    docker_host: Components: main
    docker_host: '
    docker_host: Description:
    docker_host: Ansible is a radically simple IT automation platform that makes your applications and systems easier to deploy. Avoid writing scripts or custom code to deploy and update your applications— automate in a language that approaches plain English, using SSH, with no agents to install on remote systems.
    docker_host:
    docker_host: http://ansible.com/
    docker_host:
    docker_host: If you face any issues while installing Ansible PPA, file an issue here:
    docker_host: https://github.com/ansible-community/ppa/issues
    docker_host: More info: https://launchpad.net/~ansible/+archive/ubuntu/ansible
    docker_host: Adding repository.
    docker_host: Reading package lists...
    docker_host: Building dependency tree...
    docker_host: Reading state information...
    docker_host: The following additional packages will be installed:
    docker_host:   ansible-core python3-kerberos python3-nacl python3-ntlm-auth
    docker_host:   python3-paramiko python3-requests-ntlm python3-resolvelib python3-winrm
    docker_host:   python3-xmltodict sshpass
    docker_host: Suggested packages:
    docker_host:   python-nacl-doc python3-gssapi python3-invoke
    docker_host: The following NEW packages will be installed:
    docker_host:   ansible ansible-core python3-kerberos python3-nacl python3-ntlm-auth
    docker_host:   python3-paramiko python3-requests-ntlm python3-resolvelib python3-winrm
    docker_host:   python3-xmltodict sshpass
    docker_host: 0 upgraded, 11 newly installed, 0 to remove and 242 not upgraded.
    docker_host: Need to get 20.4 MB of archives.
    docker_host: After this operation, 222 MB of additional disk space will be used.
    docker_host: Get:1 https://ppa.launchpadcontent.net/ansible/ansible/ubuntu noble/main amd64 ansible-core all 2.21.5-1ppa~noble [1,151 kB]
    docker_host: Get:2 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-resolvelib all 1.0.1-1 [25.7 kB]
    docker_host: Get:3 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-kerberos amd64 1.1.14-3.1build9 [21.2 kB]
    docker_host: Get:4 http://us.archive.ubuntu.com/ubuntu noble/main amd64 python3-nacl amd64 1.5.0-4build1 [57.9 kB]
    docker_host: Get:5 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-ntlm-auth all 1.5.0-1 [21.3 kB]
    docker_host: Get:6 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 python3-paramiko all 2.12.0-2ubuntu4.1 [137 kB]
    docker_host: Get:7 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-requests-ntlm all 1.1.0-3 [6,308 B]
    docker_host: Get:8 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 python3-xmltodict all 0.13.0-1ubuntu0.24.04.1 [14.3 kB]
    docker_host: Get:9 https://ppa.launchpadcontent.net/ansible/ansible/ubuntu noble/main amd64 ansible all 14.5.0-1ppa~noble [18.9 MB]
    docker_host: Get:10 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-winrm all 0.4.3-2 [31.9 kB]
    docker_host: Get:11 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 sshpass amd64 1.09-1 [11.7 kB]
    docker_host: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    docker_host: Fetched 20.4 MB in 3s (7,626 kB/s)
    docker_host: Selecting previously unselected package python3-resolvelib.
(Reading database ... 50832 files and directories currently installed.)
    docker_host: Preparing to unpack .../00-python3-resolvelib_1.0.1-1_all.deb ...
    docker_host: Unpacking python3-resolvelib (1.0.1-1) ...
    docker_host: Selecting previously unselected package ansible-core.
    docker_host: Preparing to unpack .../01-ansible-core_2.21.5-1ppa~noble_all.deb ...
    docker_host: Unpacking ansible-core (2.21.5-1ppa~noble) ...
    docker_host: Selecting previously unselected package ansible.
    docker_host: Preparing to unpack .../02-ansible_14.5.0-1ppa~noble_all.deb ...
    docker_host: Unpacking ansible (14.5.0-1ppa~noble) ...
    docker_host: Selecting previously unselected package python3-kerberos.
    docker_host: Preparing to unpack .../03-python3-kerberos_1.1.14-3.1build9_amd64.deb ...
    docker_host: Unpacking python3-kerberos (1.1.14-3.1build9) ...
    docker_host: Selecting previously unselected package python3-nacl.
    docker_host: Preparing to unpack .../04-python3-nacl_1.5.0-4build1_amd64.deb ...
    docker_host: Unpacking python3-nacl (1.5.0-4build1) ...
    docker_host: Selecting previously unselected package python3-ntlm-auth.
    docker_host: Preparing to unpack .../05-python3-ntlm-auth_1.5.0-1_all.deb ...
    docker_host: Unpacking python3-ntlm-auth (1.5.0-1) ...
    docker_host: Selecting previously unselected package python3-paramiko.
    docker_host: Preparing to unpack .../06-python3-paramiko_2.12.0-2ubuntu4.1_all.deb ...
    docker_host: Unpacking python3-paramiko (2.12.0-2ubuntu4.1) ...
    docker_host: Selecting previously unselected package python3-requests-ntlm.
    docker_host: Preparing to unpack .../07-python3-requests-ntlm_1.1.0-3_all.deb ...
    docker_host: Unpacking python3-requests-ntlm (1.1.0-3) ...
    docker_host: Selecting previously unselected package python3-xmltodict.
    docker_host: Preparing to unpack .../08-python3-xmltodict_0.13.0-1ubuntu0.24.04.1_all.deb ...
    docker_host: Unpacking python3-xmltodict (0.13.0-1ubuntu0.24.04.1) ...
    docker_host: Selecting previously unselected package python3-winrm.
    docker_host: Preparing to unpack .../09-python3-winrm_0.4.3-2_all.deb ...
    docker_host: Unpacking python3-winrm (0.4.3-2) ...
    docker_host: Selecting previously unselected package sshpass.
    docker_host: Preparing to unpack .../10-sshpass_1.09-1_amd64.deb ...
    docker_host: Unpacking sshpass (1.09-1) ...
    docker_host: Setting up python3-ntlm-auth (1.5.0-1) ...
    docker_host: Setting up python3-resolvelib (1.0.1-1) ...
    docker_host: Setting up python3-kerberos (1.1.14-3.1build9) ...
    docker_host: Setting up ansible-core (2.21.5-1ppa~noble) ...
    docker_host: Setting up sshpass (1.09-1) ...
    docker_host: Setting up python3-xmltodict (0.13.0-1ubuntu0.24.04.1) ...
    docker_host: Setting up ansible (14.5.0-1ppa~noble) ...
    docker_host: Setting up python3-nacl (1.5.0-4build1) ...
    docker_host: Setting up python3-requests-ntlm (1.1.0-3) ...
    docker_host: Setting up python3-winrm (0.4.3-2) ...
    docker_host: Setting up python3-paramiko (2.12.0-2ubuntu4.1) ...
    docker_host: Processing triggers for man-db (2.12.0-4build2) ...
    docker_host:
    docker_host: Running kernel seems to be up-to-date.
    docker_host:
    docker_host: No services need to be restarted.
    docker_host:
    docker_host: No containers need to be restarted.
    docker_host:
    docker_host: No user sessions are running outdated binaries.
    docker_host:
    docker_host: No VM guests are running outdated hypervisor (qemu) binaries on this host.
    docker_host: ansible [core 2.21.5]
    docker_host:   config file = /etc/ansible/ansible.cfg
    docker_host:   configured module search path = ['/root/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
    docker_host:   ansible python module location = /usr/lib/python3/dist-packages/ansible
    docker_host:   ansible collection location = /root/.ansible/collections:/usr/share/ansible/collections
    docker_host:   executable location = /usr/bin/ansible
    docker_host:   python version = 3.12.3 (main, Aug 14 2025, 17:47:21) [GCC 13.3.0] (/usr/bin/python3)
    docker_host:   jinja version = 3.1.2
    docker_host:   pyyaml version = 6.0.1 (with libyaml v0.2.5)
==> docker_host: Running provisioner: shell...
    docker_host: Running: C:/Users/Admin/AppData/Local/Temp/vagrant-shell20261028-31832-imwvap.sh
    docker_host: + getent passwd
    docker_host: + grep -c '^admin:'
    docker_host: + echo creating admin user
    docker_host: creating admin user
    docker_host: ++ mkpasswd minad1234
    docker_host: + sudo useradd -m -s /bin/bash -U admin -u 1001 --groups sudo --password '$y$j9T$Dto8pP22jDJnVvkf1N.oh0$lbCuY4oucQZUo6XGmMawNOQIsDOZRP4qQOHiatQ1rF0'
    docker_host: + sudo echo '%admin ALL=(ALL) NOPASSWD: ALL'
    docker_host: + getent passwd
    docker_host: + grep -c '^ansible:'
    docker_host: + echo creating ansible user
    docker_host: creating ansible user
    docker_host: ++ mkpasswd minad1234
    docker_host: + sudo useradd -m -s /bin/bash -U ansible -u 800 --groups sudo --password '$y$j9T$g0lYQbCcKuor8jVYdRF590$dVDXehxDF2gdSq0wxXCitm5Bh2VSjGOrBdleDql8kr0'
    docker_host: useradd warning: ansible's uid 800 outside of the UID_MIN 1000 and UID_MAX 60000 range.
    docker_host: + sudo echo '%ansible ALL=(ALL) NOPASSWD: ALL'
==> docker_host: Running provisioner: shell...
    docker_host: Running: C:/Users/Admin/AppData/Local/Temp/vagrant-shell20261028-31832-vi4p32.sh
    docker_host: + ANSIBLE_KEYS=/vagrant/.ssh-ansible
    docker_host: + ANSIBLE_USER_HOME=/home/ansible
    docker_host: + '[' -d /vagrant/.ssh-ansible ']'
    docker_host: creating ansible keys for stack in /vagrant/.ssh-ansible
    docker_host: + echo creating ansible keys for stack in /vagrant/.ssh-ansible
    docker_host: + mkdir -p /vagrant/.ssh-ansible
    docker_host: + ssh-keygen -t rsa -b 4096 -N '' -f /vagrant/.ssh-ansible/id_rsa
    docker_host: Generating public/private rsa key pair.
    docker_host: Your identification has been saved in /vagrant/.ssh-ansible/id_rsa
    docker_host: Your public key has been saved in /vagrant/.ssh-ansible/id_rsa.pub
    docker_host: The key fingerprint is:
    docker_host: SHA256:JOSvG656YyTvrbkf5m6U7G6uJOmg98pvAhkztl7hVzs root@docker-host
    docker_host: The key's randomart image is:
    docker_host: +---[RSA 4096]----+
    docker_host: |      .          |
    docker_host: |     o           |
    docker_host: |      o .        |
    docker_host: |+. .   =         |
    docker_host: |.=o ....S        |
    docker_host: |o..+..+E         |
    docker_host: |o.++oo= .        |
    docker_host: |.=oo**++         |
    docker_host: |..=@X&X          |
    docker_host: +----[SHA256]-----+
    docker_host: + sudo bash -c ' ! [ -d "$ANSIBLE_USER_HOME/.ssh" ]'
    docker_host: + echo copying ansible keys to /home/ansible/.ssh
    docker_host: copying ansible keys to /home/ansible/.ssh
    docker_host: + sudo mkdir -p /home/ansible/.ssh
    docker_host: + sudo chmod 700 /home/ansible/.ssh
    docker_host: + sudo cp /vagrant/.ssh-ansible/id_rsa /home/ansible/.ssh
    docker_host: + sudo chmod 600 /home/ansible/.ssh/id_rsa
    docker_host: + sudo cp /vagrant/.ssh-ansible/id_rsa.pub /home/ansible/.ssh/authorized_keys
    docker_host: + sudo chmod 644 /home/ansible/.ssh/authorized_keys
    docker_host: + sudo cp /vagrant/.ssh-ansible/id_rsa.pub /home/ansible/.ssh
    docker_host: + sudo chmod 644 /home/ansible/.ssh/id_rsa.pub
    docker_host: + sudo chown -R ansible:ansible /home/ansible/.ssh
==> docker_host: Running provisioner: shell...
    docker_host: Running: inline script
    docker_host: adding docker to ubuntu
    docker_host: Hit:1 http://security.ubuntu.com/ubuntu noble-security InRelease
    docker_host: Hit:2 https://ppa.launchpadcontent.net/ansible/ansible/ubuntu noble InRelease
    docker_host: Hit:3 http://us.archive.ubuntu.com/ubuntu noble InRelease
    docker_host: Hit:4 http://us.archive.ubuntu.com/ubuntu noble-updates InRelease
    docker_host: Hit:5 http://us.archive.ubuntu.com/ubuntu noble-backports InRelease
    docker_host: Reading package lists...
    docker_host: Reading package lists...
    docker_host: Building dependency tree...
    docker_host: Reading state information...
    docker_host: The following additional packages will be installed:
    docker_host:   dirmngr gnupg-l10n gnupg-utils gpg gpg-agent gpg-wks-client gpgconf gpgsm
    docker_host:   gpgv keyboxd libcurl3t64-gnutls libcurl4t64
    docker_host: Suggested packages:
    docker_host:   pinentry-gnome3 tor parcimonie xloadimage gpg-wks-server scdaemon
    docker_host: The following packages will be upgraded:
    docker_host:   ca-certificates curl dirmngr gnupg gnupg-l10n gnupg-utils gpg gpg-agent
    docker_host:   gpg-wks-client gpgconf gpgsm gpgv keyboxd libcurl3t64-gnutls libcurl4t64
    docker_host: 15 upgraded, 0 newly installed, 0 to remove and 227 not upgraded.
    docker_host: Need to get 3,339 kB of archives.
    docker_host: After this operation, 48.1 kB disk space will be freed.
    docker_host: Get:1 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 gpg-wks-client amd64 2.4.4-2ubuntu17.6 [70.9 kB]
    docker_host: Get:2 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 dirmngr amd64 2.4.4-2ubuntu17.6 [323 kB]
    docker_host: Get:3 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 gpgsm amd64 2.4.4-2ubuntu17.6 [232 kB]
    docker_host: Get:4 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 gnupg-utils amd64 2.4.4-2ubuntu17.6 [109 kB]
    docker_host: Get:5 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 gpg-agent amd64 2.4.4-2ubuntu17.6 [227 kB]
    docker_host: Get:6 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 gpg amd64 2.4.4-2ubuntu17.6 [565 kB]
    docker_host: Get:7 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 gpgconf amd64 2.4.4-2ubuntu17.6 [104 kB]
    docker_host: Get:8 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 gnupg all 2.4.4-2ubuntu17.6 [359 kB]
    docker_host: Get:9 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 keyboxd amd64 2.4.4-2ubuntu17.6 [78.3 kB]
    docker_host: Get:10 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 gpgv amd64 2.4.4-2ubuntu17.6 [158 kB]
    docker_host: Get:11 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 ca-certificates all 20260816ubuntu0.24.04.1 [139 kB]
    docker_host: Get:12 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 curl amd64 8.5.0-2ubuntu10.16 [226 kB]
    docker_host: Get:13 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 libcurl4t64 amd64 8.5.0-2ubuntu10.16 [344 kB]
    docker_host: Get:14 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 gnupg-l10n all 2.4.4-2ubuntu17.6 [66.5 kB]
    docker_host: Get:15 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 libcurl3t64-gnutls amd64 8.5.0-2ubuntu10.16 [337 kB]
    docker_host: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    docker_host: Fetched 3,339 kB in 1s (2,612 kB/s)
(Reading database ... 76235 files and directories currently installed.)
    docker_host: Preparing to unpack .../0-gpg-wks-client_2.4.4-2ubuntu17.6_amd64.deb ...
    docker_host: Unpacking gpg-wks-client (2.4.4-2ubuntu17.6) over (2.4.4-2ubuntu17.3) ...
    docker_host: Preparing to unpack .../1-dirmngr_2.4.4-2ubuntu17.6_amd64.deb ...
    docker_host: Unpacking dirmngr (2.4.4-2ubuntu17.6) over (2.4.4-2ubuntu17.3) ...
    docker_host: Preparing to unpack .../2-gpgsm_2.4.4-2ubuntu17.6_amd64.deb ...
    docker_host: Unpacking gpgsm (2.4.4-2ubuntu17.6) over (2.4.4-2ubuntu17.3) ...
    docker_host: Preparing to unpack .../3-gnupg-utils_2.4.4-2ubuntu17.6_amd64.deb ...
    docker_host: Unpacking gnupg-utils (2.4.4-2ubuntu17.6) over (2.4.4-2ubuntu17.3) ...
    docker_host: Preparing to unpack .../4-gpg-agent_2.4.4-2ubuntu17.6_amd64.deb ...
    docker_host: Unpacking gpg-agent (2.4.4-2ubuntu17.6) over (2.4.4-2ubuntu17.3) ...
    docker_host: Preparing to unpack .../5-gpg_2.4.4-2ubuntu17.6_amd64.deb ...
    docker_host: Unpacking gpg (2.4.4-2ubuntu17.6) over (2.4.4-2ubuntu17.3) ...
    docker_host: Preparing to unpack .../6-gpgconf_2.4.4-2ubuntu17.6_amd64.deb ...
    docker_host: Unpacking gpgconf (2.4.4-2ubuntu17.6) over (2.4.4-2ubuntu17.3) ...
    docker_host: Preparing to unpack .../7-gnupg_2.4.4-2ubuntu17.6_all.deb ...
    docker_host: Unpacking gnupg (2.4.4-2ubuntu17.6) over (2.4.4-2ubuntu17.3) ...
    docker_host: Preparing to unpack .../8-keyboxd_2.4.4-2ubuntu17.6_amd64.deb ...
    docker_host: Unpacking keyboxd (2.4.4-2ubuntu17.6) over (2.4.4-2ubuntu17.3) ...
    docker_host: Preparing to unpack .../9-gpgv_2.4.4-2ubuntu17.6_amd64.deb ...
    docker_host: Unpacking gpgv (2.4.4-2ubuntu17.6) over (2.4.4-2ubuntu17.3) ...
    docker_host: Setting up gpgv (2.4.4-2ubuntu17.6) ...
(Reading database ... 76235 files and directories currently installed.)
    docker_host: Preparing to unpack .../ca-certificates_20260816ubuntu0.24.04.1_all.deb ...
    docker_host: Unpacking ca-certificates (20260816ubuntu0.24.04.1) over (20240203) ...
    docker_host: Preparing to unpack .../curl_8.5.0-2ubuntu10.16_amd64.deb ...
    docker_host: Unpacking curl (8.5.0-2ubuntu10.16) over (8.5.0-2ubuntu10.6) ...
    docker_host: Preparing to unpack .../libcurl4t64_8.5.0-2ubuntu10.16_amd64.deb ...
    docker_host: Unpacking libcurl4t64:amd64 (8.5.0-2ubuntu10.16) over (8.5.0-2ubuntu10.6) ...
    docker_host: Preparing to unpack .../gnupg-l10n_2.4.4-2ubuntu17.6_all.deb ...
    docker_host: Unpacking gnupg-l10n (2.4.4-2ubuntu17.6) over (2.4.4-2ubuntu17.3) ...
    docker_host: Preparing to unpack .../libcurl3t64-gnutls_8.5.0-2ubuntu10.16_amd64.deb ...
    docker_host: Unpacking libcurl3t64-gnutls:amd64 (8.5.0-2ubuntu10.16) over (8.5.0-2ubuntu10.6) ...
    docker_host: Setting up libcurl4t64:amd64 (8.5.0-2ubuntu10.16) ...
    docker_host: Setting up libcurl3t64-gnutls:amd64 (8.5.0-2ubuntu10.16) ...
    docker_host: Setting up ca-certificates (20260816ubuntu0.24.04.1) ...
    docker_host: Updating certificates in /etc/ssl/certs...
    docker_host: rehash: warning: skipping ca-certificates.crt,it does not contain exactly one certificate or CRL
    docker_host: 17 added, 43 removed; done.
    docker_host: Setting up gnupg-l10n (2.4.4-2ubuntu17.6) ...
    docker_host: Setting up gpgconf (2.4.4-2ubuntu17.6) ...
    docker_host: Setting up curl (8.5.0-2ubuntu10.16) ...
    docker_host: Setting up gpg (2.4.4-2ubuntu17.6) ...
    docker_host: Setting up gnupg-utils (2.4.4-2ubuntu17.6) ...
    docker_host: Setting up gpg-agent (2.4.4-2ubuntu17.6) ...
    docker_host: Setting up gpgsm (2.4.4-2ubuntu17.6) ...
    docker_host: Setting up dirmngr (2.4.4-2ubuntu17.6) ...
    docker_host: Setting up keyboxd (2.4.4-2ubuntu17.6) ...
    docker_host: Setting up gnupg (2.4.4-2ubuntu17.6) ...
    docker_host: Setting up gpg-wks-client (2.4.4-2ubuntu17.6) ...
    docker_host: Processing triggers for man-db (2.12.0-4build2) ...
    docker_host: Processing triggers for install-info (7.1-3build2) ...
    docker_host: Processing triggers for libc-bin (2.39-0ubuntu8.6) ...
    docker_host: Processing triggers for ca-certificates (20260816ubuntu0.24.04.1) ...
    docker_host: Updating certificates in /etc/ssl/certs...
    docker_host: 0 added, 0 removed; done.
    docker_host: Running hooks in /etc/ca-certificates/update.d...
    docker_host: done.
    docker_host:
    docker_host: Running kernel seems to be up-to-date.
    docker_host:
    docker_host: Restarting services...
    docker_host:  systemctl restart packagekit.service
    docker_host:
    docker_host: No containers need to be restarted.
    docker_host:
    docker_host: No user sessions are running outdated binaries.
    docker_host:
    docker_host: No VM guests are running outdated hypervisor (qemu) binaries on this host.
    docker_host: Hit:1 http://security.ubuntu.com/ubuntu noble-security InRelease
    docker_host: Hit:2 https://ppa.launchpadcontent.net/ansible/ansible/ubuntu noble InRelease
    docker_host: Get:3 https://download.docker.com/linux/ubuntu noble InRelease [48.5 kB]
    docker_host: Hit:4 http://us.archive.ubuntu.com/ubuntu noble InRelease
    docker_host: Hit:5 http://us.archive.ubuntu.com/ubuntu noble-updates InRelease
    docker_host: Hit:6 http://us.archive.ubuntu.com/ubuntu noble-backports InRelease
    docker_host: Get:7 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages [72.1 kB]
    docker_host: Fetched 121 kB in 4s (29.3 kB/s)
    docker_host: Reading package lists...
    docker_host: docker-ce:
    docker_host:   Installed: (none)
    docker_host:   Candidate: 5:29.9.2-1~ubuntu.24.04~noble
    docker_host:   Version table:
    docker_host:      5:29.9.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.9.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.9.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.8.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.8.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.8.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.7.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.7.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.7.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.6.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.6.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.6.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.5.3-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.5.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.5.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.5.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.4.3-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.4.2-2~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.4.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.4.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.4.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.3.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.3.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.2.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.2.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.1.5-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.1.4-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.1.3-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.1.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.1.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.1.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.0.4-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.0.3-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.0.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.0.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:29.0.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.5.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.5.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.5.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.4.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.3.3-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.3.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.3.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.3.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.2.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.2.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.2.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.1.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.1.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.0.4-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.0.3-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.0.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.0.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:28.0.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.5.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.5.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.4.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.4.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.3.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.3.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.2.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.2.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.1.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.1.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.1.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.0.3-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.0.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:27.0.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:26.1.4-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:26.1.3-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:26.1.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:26.1.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:26.1.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:26.0.2-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:26.0.1-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host:      5:26.0.0-1~ubuntu.24.04~noble 500
    docker_host:         500 https://download.docker.com/linux/ubuntu noble/stable amd64 Packages
    docker_host: Reading package lists...
    docker_host: Building dependency tree...
    docker_host: Reading state information...
    docker_host: The following additional packages will be installed:
    docker_host:   containerd.io docker-buildx-plugin docker-ce-cli docker-ce-rootless-extras
    docker_host:   docker-compose-plugin pigz
    docker_host: Suggested packages:
    docker_host:   cgroupfs-mount | cgroup-lite docker-model-plugin
    docker_host: The following NEW packages will be installed:
    docker_host:   containerd.io docker-buildx-plugin docker-ce docker-ce-cli
    docker_host:   docker-ce-rootless-extras docker-compose-plugin pigz
    docker_host: 0 upgraded, 7 newly installed, 0 to remove and 227 not upgraded.
    docker_host: Need to get 102 MB of archives.
    docker_host: After this operation, 388 MB of additional disk space will be used.
    docker_host: Get:1 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 pigz amd64 2.8-1 [65.6 kB]
    docker_host: Get:2 https://download.docker.com/linux/ubuntu noble/stable amd64 containerd.io amd64 2.4.2-3~ubuntu.24.04~noble [23.3 MB]
    docker_host: Get:3 https://download.docker.com/linux/ubuntu noble/stable amd64 docker-ce-cli amd64 5:29.9.2-1~ubuntu.24.04~noble [17.6 MB]
    docker_host: Get:4 https://download.docker.com/linux/ubuntu noble/stable amd64 docker-ce amd64 5:29.9.2-1~ubuntu.24.04~noble [24.6 MB]
    docker_host: Get:5 https://download.docker.com/linux/ubuntu noble/stable amd64 docker-buildx-plugin amd64 0.38.1-1~ubuntu.24.04~noble [17.8 MB]
    docker_host: Get:6 https://download.docker.com/linux/ubuntu noble/stable amd64 docker-ce-rootless-extras amd64 5:29.9.2-1~ubuntu.24.04~noble [10.2 MB]
    docker_host: Get:7 https://download.docker.com/linux/ubuntu noble/stable amd64 docker-compose-plugin amd64 5.6.1-1~ubuntu.24.04~noble [8,083 kB]
    docker_host: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    docker_host: Fetched 102 MB in 10s (9,831 kB/s)
    docker_host: Selecting previously unselected package containerd.io.
(Reading database ... 76209 files and directories currently installed.)
    docker_host: Preparing to unpack .../0-containerd.io_2.4.2-3~ubuntu.24.04~noble_amd64.deb ...
    docker_host: Unpacking containerd.io (2.4.2-3~ubuntu.24.04~noble) ...
    docker_host: Selecting previously unselected package docker-ce-cli.
    docker_host: Preparing to unpack .../1-docker-ce-cli_5%3a29.9.2-1~ubuntu.24.04~noble_amd64.deb ...
    docker_host: Unpacking docker-ce-cli (5:29.9.2-1~ubuntu.24.04~noble) ...
    docker_host: Selecting previously unselected package docker-ce.
    docker_host: Preparing to unpack .../2-docker-ce_5%3a29.9.2-1~ubuntu.24.04~noble_amd64.deb ...
    docker_host: Unpacking docker-ce (5:29.9.2-1~ubuntu.24.04~noble) ...
    docker_host: Selecting previously unselected package pigz.
    docker_host: Preparing to unpack .../3-pigz_2.8-1_amd64.deb ...
    docker_host: Unpacking pigz (2.8-1) ...
    docker_host: Selecting previously unselected package docker-buildx-plugin.
    docker_host: Preparing to unpack .../4-docker-buildx-plugin_0.38.1-1~ubuntu.24.04~noble_amd64.deb ...
    docker_host: Unpacking docker-buildx-plugin (0.38.1-1~ubuntu.24.04~noble) ...
    docker_host: Selecting previously unselected package docker-ce-rootless-extras.
    docker_host: Preparing to unpack .../5-docker-ce-rootless-extras_5%3a29.9.2-1~ubuntu.24.04~noble_amd64.deb ...
    docker_host: Unpacking docker-ce-rootless-extras (5:29.9.2-1~ubuntu.24.04~noble) ...
    docker_host: Selecting previously unselected package docker-compose-plugin.
    docker_host: Preparing to unpack .../6-docker-compose-plugin_5.6.1-1~ubuntu.24.04~noble_amd64.deb ...
    docker_host: Unpacking docker-compose-plugin (5.6.1-1~ubuntu.24.04~noble) ...
    docker_host: Setting up docker-buildx-plugin (0.38.1-1~ubuntu.24.04~noble) ...
    docker_host: Setting up containerd.io (2.4.2-3~ubuntu.24.04~noble) ...
    docker_host: Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /usr/lib/systemd/system/containerd.service.
    docker_host: Setting up docker-compose-plugin (5.6.1-1~ubuntu.24.04~noble) ...
    docker_host: Setting up docker-ce-cli (5:29.9.2-1~ubuntu.24.04~noble) ...
    docker_host: Setting up pigz (2.8-1) ...
    docker_host: Setting up docker-ce-rootless-extras (5:29.9.2-1~ubuntu.24.04~noble) ...
    docker_host: Setting up docker-ce (5:29.9.2-1~ubuntu.24.04~noble) ...
    docker_host: Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /usr/lib/systemd/system/docker.service.
    docker_host: Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /usr/lib/systemd/system/docker.socket.
    docker_host: Processing triggers for man-db (2.12.0-4build2) ...
    docker_host:
    docker_host: Running kernel seems to be up-to-date.
    docker_host:
    docker_host: No services need to be restarted.
    docker_host:
    docker_host: No containers need to be restarted.
    docker_host:
    docker_host: No user sessions are running outdated binaries.
    docker_host:
    docker_host: No VM guests are running outdated hypervisor (qemu) binaries on this host.
    docker_host: Synchronizing state of docker.service with SysV service script with /usr/lib/systemd/systemd-sysv-install.
    docker_host: Executing: /usr/lib/systemd/systemd-sysv-install enable docker
```

```
PS C:\devel\gitrepos\COM511_Network_Syvagrant sshation\myPracticeCourseWork\
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct 28 12:16:29 PM UTC 2026

  System load:           0.12
  Usage of /:            17.9% of 30.34GB
  Memory usage:          10%
  Swap usage:            0%
  Processes:             131
  Users logged in:       0
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
```

```
vagrant@docker-host:~$ cd /vagrant/docker-examples/docker-apache
vagrant@docker-host:/vagrant/docker-examples/docker-apache$ docker build -t my-apache .
[+] Building 51.1s (2/2) FINISHED do
 => [internal] load build def  0.4s
 => => transferring dock 344B  0.0s
 => ERROR [internal] load me  50.3s
------
 > [internal] load metadata for docker.io/library/ubuntu:22.04:
------
Dockerfile:2
--------------------
   1 |     # start with the official apache base image
   2 | >>> FROM ubuntu:22.04
   3 |
   4 |     # Install apache2
--------------------
ERROR: failed to build: failed to solve: ubuntu:22.04: failed to resolve source metadata for docker.io/library/ubuntu:22.04: failed to do request: Head "https://registry-1.docker.io/v2/library/ubuntu/manifests/22.04": dial tcp: lookup registry-1.docker.io on 127.0.0.53:53: read udp 127.0.0.1:56304->127.vagrant@docker-host:/vagrant/docker-examples/docker-apache$ docker build -t my-apache .
[+] Building 50.7s (2/2) FINISHED                            docker:default
 => [internal] load build definition from Dockerfile                   0.1s
 => => transferring dockerfile: 344B                                   0.0s
 => ERROR [internal] load metadata for docker.io/library/ubuntu:22.0  50.2s
------
 > [internal] load metadata for docker.io/library/ubuntu:22.04:
------
Dockerfile:2
--------------------
   1 |     # start with the official apache base image
   2 | >>> FROM ubuntu:22.04
   3 |
   4 |     # Install apache2
--------------------
ERROR: failed to build: failed to solve: ubuntu:22.04: failed to resolve source metadata for docker.io/library/ubuntu:22.04: failed to do request: Head "https://registry-1.docker.io/v2/library/ubuntu/manifests/22.04": dial tcp: lookup registry-1.docker.io on 127.0.0.53:53: read udp 127.0.0.1:38596->127.0.0.53:53: i/o timeout
```
The core issue is that the Vagrant virtual machine cannot resolve domain names, which prevents Docker from downloading the ubuntu:22.04 base image from Docker Hub.
The specific error dial tcp: lookup registry-1.docker.io on 127.0.0.53:53 means the internal Ubuntu DNS resolver (systemd-resolved running on 127.0.0.53) is timed out or unable to forward DNS queries to the outside world through your VirtualBox network configuration.

How did I Fix It

By adding public DNS servers (like Google or Cloudflare) directly to the Vagrant VM:

Force the VM to use a public DNS server immediately by overwriting the resolv.conf file:

```
sudo rm -f /etc/resolv.conf
sudo echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
```

Try running docker build -t my-apache . again. If it succeeds, the issue is confirmed to be DNS.


Permanent Fix (via systemd-resolved)

Because Vagrant or Ubuntu might overwrite /etc/resolv.conf when restarting, it is best to configure it permanently:
1. Open the resolved configuration file:

```
sudo nano /etc/systemd/resolved.conf
```


2. Find the line that says #DNS= (it is usually commented out). Change it to:text
DNS=8.8.8.8 1.1.1.1


3. Restart the DNS service to apply changes:

```
sudo systemctl restart systemd-resolved
```

Alternative Permanent Fix (via Vagrantfile)

If you destroy and recreate your Vagrant box often, you can instruct VirtualBox to pass your host machine's DNS settings down to the VM. Add this inside the configuration block of your host machine's Vagrantfile:
ruby
Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end
end
Use code with caution.
Note: You will need to run vagrant reload from your Windows PowerShell window for this change to take effect.

```
vagrant@docker-host:/vagrant/docker-examples/docker-apache$ sudo rm -f /etc/resolv.conf
vagrant@docker-host:/vagrant/docker-examples/docker-apache$ sudo echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
nameserver 8.8.8.8
```

```
vagrant@docker-host:/vagrant/docker-examples/docker-apache$ docker build -t my-apache .
[+] Building 96.8s (6/6) FINISHED                            docker:default
 => [internal] load build definition from Dockerfile                   0.0s
 => => transferring dockerfile: 344B                                   0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04        2.0s
 => [internal] load .dockerignore                                      0.1s
 => => transferring context: 2B                                        0.0s
 => [1/2] FROM docker.io/library/ubuntu:22.04@sha256:e0f80c829509ef4d  7.7s
 => => resolve docker.io/library/ubuntu:22.04@sha256:e0f80c829509ef4d  0.1s
 => => sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe2 29.75MB / 29.75MB  3.7s
 => => extracting sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915  3.7s
 => [2/2] RUN apt-get update && apt-get install -y apache2            53.8s
 => exporting to image                                                32.3s
 => => exporting layers                                               12.9s
 => => exporting manifest sha256:33f48196fe7f58965b90c467702e31943415  0.0s
 => => exporting config sha256:9b8e9ddfe9c9b675a8f85a10105128c2c6cb0c  0.0s
 => => exporting attestation manifest sha256:acdeeb62df348c779ffaca70  0.3s
 => => exporting manifest list sha256:7e2bdd1880e5a370bc105097a7806b4  0.2s
 => => naming to docker.io/library/my-apache:latest                    0.0s
 => => unpacking to docker.io/library/my-apache:latest                18.7s
```

```
vagrant@docker-host:/vagrant/docker-examples/docker-apache$ docker run -d -p 8081:80 --name apache-1 my-apache
ef6b5e72435fccff2429373d8f911ae9ff60f322aa9349db4103f58274c80c91
```

```
vagrant@docker-host:/vagrant/docker-examples/docker-apache$ docker ps
CONTAINER ID   IMAGE       COMMAND                  CREATED          STATUS          PORTS                                     NAMES
ef6b5e72435f   my-apache   "apachectl -D FOREGR…"   27 seconds ago   Up 26 seconds   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   apache-1
```

```
vagrant@docker-host:/vagrant/docker-examples/docker-apache$ docker ps
CONTAINER ID   IMAGE       COMMAND                  CREATED         STATUS         PORTS                                     NAMES
ef6b5e72435f   my-apache   "apachectl -D FOREGR…"   2 minutes ago   Up 2 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   apache-1
```

```
vagrant@docker-host:/vagrant/docker-examples/docker-apache$ docker kill apache-1
apache-1
```

```
vagrant@docker-host:/vagrant/docker-examples/docker-apache$ docker rm apache-1
apache-1
```

```
vagrant@docker-host:/vagrant/docker-examples/docker-apache$ exit
logout
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1> vagrant destroy
    docker_host: Are you sure you want to destroy the 'docker_host' VM? [y/N] y
==> docker_host: Forcing shutdown of VM...
==> docker_host: Destroying VM and associated drives...
```
