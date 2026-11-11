
================================== FIRST TERMINAL WINDOW (vagrant@docker-host vagrantdocker-examplesdocker-apache) ============================

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



======================= ANOTHER TERMINAL WINDOW (Docker setup) ============================
Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Loading personal and system profiles took 775ms.

# Note:
```
### Ubuntu1: 
* CID: f6013e9a6956
* ip: 172.17.0.3
* local port: 8082

### Ubuntu2: 
* CID: b21a80160938
* ip: 172.17.0.2
* local port: 8081
```

```
PS C:\Users\Admin> cd "C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples"
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples> cd ..
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it ubuntu:22.04
Unable to find image 'ubuntu:22.04' locally
22.04: Pulling from library/ubuntu
0626d3cc316c: Pull complete
ae52aad3a114: Download complete
Digest: sha256:e0f80c829509ef4df9e76bd8944eb7b8ec25cbb379b112a7f9448b2c77a77c9b
Status: Downloaded newer image for ubuntu:22.04
root@7f0827c289ec:/# ifconfig
bash: ifconfig: command not found
```

```
root@7f0827c289ec:/# apt update
Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy InRelease [270 kB]
Get:3 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [4430 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
Get:5 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [96.8 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
Get:7 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [1325 kB]
Get:8 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [7955 kB]
Get:9 http://archive.ubuntu.com/ubuntu jammy/restricted amd64 Packages [164 kB]
Get:10 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [17.5 MB]
Get:11 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [266 kB]
Get:12 http://archive.ubuntu.com/ubuntu jammy/main amd64 Packages [1792 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [104 kB]
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [8289 kB]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [4792 kB]
Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1629 kB]
Get:17 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [35.6 kB]
Get:18 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [82.9 kB]
Fetched 49.1 MB in 3s (14.1 MB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
```

```
root@7f0827c289ec:/# apt install net-tools
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  net-tools
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 204 kB of archives.
After this operation, 819 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 net-tools amd64 1.60+git20181103.0eebece-1ubuntu5.4 [204 kB]
Fetched 204 kB in 0s (571 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package net-tools.
(Reading database ... 4393 files and directories currently installed.)
Preparing to unpack .../net-tools_1.60+git20181103.0eebece-1ubuntu5.4_amd64.deb ...
Unpacking net-tools (1.60+git20181103.0eebece-1ubuntu5.4) ...
Setting up net-tools (1.60+git20181103.0eebece-1ubuntu5.4) ...
```

```
root@7f0827c289ec:/# ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.2  netmask 255.255.0.0  broadcast 172.17.255.255
        ether ae:01:f2:40:51:99  txqueuelen 0  (Ethernet)
        RX packets 39820  bytes 57139554 (57.1 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 20526  bytes 1404245 (1.4 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

```
root@7f0827c289ec:/# route -n
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         172.17.0.1      0.0.0.0         UG    0      0        0 eth0
172.17.0.0      0.0.0.0         255.255.0.0     U     0      0        0 eth0
```

```
root@7f0827c289ec:/# apt install iputils-ping
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libcap2-bin libpam-cap
The following NEW packages will be installed:
  iputils-ping libcap2-bin libpam-cap
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 77.0 kB of archives.
After this operation, 280 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcap2-bin amd64 1:2.44-1ubuntu0.22.04.3 [26.0 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 iputils-ping amd64 3:20211215-1ubuntu0.1 [43.0 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libpam-cap amd64 1:2.44-1ubuntu0.22.04.3 [7928 B]
Fetched 77.0 kB in 0s (167 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package libcap2-bin.
(Reading database ... 4442 files and directories currently installed.)
Preparing to unpack .../libcap2-bin_1%3a2.44-1ubuntu0.22.04.3_amd64.deb ...
Unpacking libcap2-bin (1:2.44-1ubuntu0.22.04.3) ...
Selecting previously unselected package iputils-ping.
Preparing to unpack .../iputils-ping_3%3a20211215-1ubuntu0.1_amd64.deb ...
Unpacking iputils-ping (3:20211215-1ubuntu0.1) ...
Selecting previously unselected package libpam-cap:amd64.
Preparing to unpack .../libpam-cap_1%3a2.44-1ubuntu0.22.04.3_amd64.deb ...
Unpacking libpam-cap:amd64 (1:2.44-1ubuntu0.22.04.3) ...
Setting up libcap2-bin (1:2.44-1ubuntu0.22.04.3) ...
Setting up libpam-cap:amd64 (1:2.44-1ubuntu0.22.04.3) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 78.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.34.0 /usr/local/share/perl/5.34.0 /usr/lib/x86_64-linux-gnu/perl5/5.34 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.34 /usr/share/perl/5.34 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 7.)
debconf: falling back to frontend: Teletype
Setting up iputils-ping (3:20211215-1ubuntu0.1) ...
```

```
root@7f0827c289ec:/# ping 127.17.0.1
PING 127.17.0.1 (127.17.0.1) 56(84) bytes of data.
64 bytes from 127.17.0.1: icmp_seq=1 ttl=64 time=0.229 ms
64 bytes from 127.17.0.1: icmp_seq=2 ttl=64 time=0.066 ms
64 bytes from 127.17.0.1: icmp_seq=3 ttl=64 time=0.042 ms
64 bytes from 127.17.0.1: icmp_seq=4 ttl=64 time=0.082 ms
64 bytes from 127.17.0.1: icmp_seq=5 ttl=64 time=0.133 ms
^C
--- 127.17.0.1 ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4100ms
rtt min/avg/max/mdev = 0.042/0.110/0.229/0.066 ms
root@7f0827c289ec:/# exit
exit
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it -d ubuntu:22.04
1de71376dd46949a07610f5877dba9f617578ce314f5768e1cbabfd7bee24a2c
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS     NAMES
1de71376dd46   ubuntu:22.04   "/bin/bash"   18 seconds ago   Up 18 seconds             zealous_yonath
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS     NAMES
1de71376dd46   ubuntu:22.04   "/bin/bash"   57 seconds ago   Up 57 seconds             zealous_yonath
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it               > ^C
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec docker exec -it de71376dd46 bash
Error response from daemon: No such container: de71376dd46

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug de71376dd46
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it de71376dd46 ba>
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it 1de71376dd46 bash
root@1de71376dd46:/# exit
exit
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS     NAMES
1de71376dd46   ubuntu:22.04   "/bin/bash"   15 minutes ago   Up 15 minutes             zealous_yonath
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker stop 1de71376dd46
1de71376dd46
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it -d -p 8081:80 --name ubuntu1 ubuntu:22.04
59631fe7af301636b5c28256e1ed6199495a7050869126a5e79172720dd6a425
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> apt update
apt : The term 'apt' is not recognized as
the name of a cmdlet, function, script
file, or operable program. Check the
spelling of the name, or if a path was
included, verify that the path is correct
and try again.
At line:1 char:1
+ apt update
+ ~~~
    + CategoryInfo          : ObjectNotFou
   nd: (apt:String) [], CommandNotFoundEx
  ception
    + FullyQualifiedErrorId : CommandNotFo
   undException
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu1 bash
root@59631fe7af30:/# apt update
Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy InRelease [270 kB]
Get:3 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [96.8 kB]
Get:4 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [7955 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy/restricted amd64 Packages [164 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy/main amd64 Packages [1792 kB]
Get:9 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [1325 kB]
Get:10 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [4430 kB]
Get:11 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [17.5 MB]
Get:12 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [266 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [8289 kB]
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [4792 kB]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [104 kB]
Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1629 kB]
Get:17 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [35.6 kB]
Get:18 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [82.9 kB]
Fetched 49.1 MB in 4s (12.7 MB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
```

```
root@59631fe7af30:/# apt install apache2
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  apache2-bin apache2-data apache2-utils
  bzip2 ca-certificates file libapr1
  libaprutil1 libaprutil1-dbd-sqlite3
  libaprutil1-ldap libbrotli1 libcurl4
  libexpat1 libgdbm-compat4 libgdbm6
  libicu70 libjansson4 libldap-2.5-0
  libldap-common liblua5.3-0 libmagic-mgc
  libmagic1 libnghttp2-14 libperl5.34
  libpsl5 librtmp1 libsasl2-2
  libsasl2-modules libsasl2-modules-db
  libsqlite3-0 libssh-4 libxml2 mailcap
  media-types mime-support netbase openssl
  perl perl-modules-5.34 publicsuffix
  ssl-cert xz-utils
Suggested packages:
  apache2-doc apache2-suexec-pristine
  | apache2-suexec-custom www-browser ufw
  bzip2-doc gdbm-l10n
  libsasl2-modules-gssapi-mit
  | libsasl2-modules-gssapi-heimdal
  libsasl2-modules-ldap
  libsasl2-modules-otp
  libsasl2-modules-sql perl-doc
  libterm-readline-gnu-perl
  | libterm-readline-perl-perl make
  libtap-harness-archive-perl
The following NEW packages will be installed:
  apache2 apache2-bin apache2-data
  apache2-utils bzip2 ca-certificates file
  libapr1 libaprutil1
  libaprutil1-dbd-sqlite3 libaprutil1-ldap
  libbrotli1 libcurl4 libexpat1
  libgdbm-compat4 libgdbm6 libicu70
  libjansson4 libldap-2.5-0 libldap-common
  liblua5.3-0 libmagic-mgc libmagic1
  libnghttp2-14 libperl5.34 libpsl5
  librtmp1 libsasl2-2 libsasl2-modules
  libsasl2-modules-db libsqlite3-0
  libssh-4 libxml2 mailcap media-types
  mime-support netbase openssl perl
  perl-modules-5.34 publicsuffix ssl-cert
  xz-utils
0 upgraded, 43 newly installed, 0 to remove and 0 not upgraded.
Need to get 25.6 MB of archives.
After this operation, 111 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 perl-modules-5.34 all 5.34.0-3ubuntu1.9 [2977 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libgdbm6 amd64 1.23-1 [33.9 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 libgdbm-compat4 amd64 1.23-1 [6606 B]
Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libperl5.34 amd64 5.34.0-3ubuntu1.9 [4796 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 perl amd64 5.34.0-3ubuntu1.9 [232 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libapr1 amd64 1.7.0-8ubuntu0.22.04.2 [108 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libexpat1 amd64 2.4.7-1ubuntu0.9 [96.9 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libaprutil1 amd64 1.6.1-5ubuntu4.22.04.3 [93.4 kB]
Get:9 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsqlite3-0 amd64 3.37.2-2ubuntu0.8 [642 kB]
Get:10 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libaprutil1-dbd-sqlite3 amd64 1.6.1-5ubuntu4.22.04.3 [11.4 kB]
Get:11 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-modules-db amd64 2.1.27+dfsg2-3ubuntu1.2 [20.5 kB]
Get:12 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-2 amd64 2.1.27+dfsg2-3ubuntu1.2 [53.8 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libldap-2.5-0 amd64 2.5.20+dfsg-0ubuntu0.22.04.1 [184 kB]
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libaprutil1-ldap amd64 1.6.1-5ubuntu4.22.04.3 [9164 B]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libbrotli1 amd64 1.0.9-2ubuntu0.1 [315 kB]
Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnghttp2-14 amd64 1.43.0-1ubuntu0.4 [76.9 kB]
Get:17 http://archive.ubuntu.com/ubuntu jammy/main amd64 libpsl5 amd64 0.21.0-1.2build2 [58.4 kB]
Get:18 http://archive.ubuntu.com/ubuntu jammy/main amd64 librtmp1 amd64 2.4+20151223.gitfa8646d.1-2build4 [58.2 kB]
Get:19 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libssh-4 amd64 0.9.6-2ubuntu0.22.04.8 [189 kB]
Get:20 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcurl4 amd64 7.81.0-1ubuntu1.30 [293 kB]
Get:21 http://archive.ubuntu.com/ubuntu jammy/main amd64 libjansson4 amd64 2.13.1-1.1build3 [32.4 kB]
Get:22 http://archive.ubuntu.com/ubuntu jammy/main amd64 liblua5.3-0 amd64 5.3.6-1build1 [140 kB]
Get:23 http://archive.ubuntu.com/ubuntu jammy/main amd64 libicu70 amd64 70.1-2 [10.6 MB]
Get:24 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libxml2 amd64 2.9.13+dfsg-1ubuntu0.14 [765 kB]
Get:25 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2-bin amd64 2.4.52-1ubuntu4.25 [1363 kB]
Get:26 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2-data all 2.4.52-1ubuntu4.25 [165 kB]
Get:27 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2-utils amd64 2.4.52-1ubuntu4.25 [90.5 kB]
Get:28 http://archive.ubuntu.com/ubuntu jammy/main amd64 media-types all 7.0.0 [25.5 kB]
Get:29 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 mailcap all 3.70+nmu1ubuntu1.22.04.1 [23.9 kB]
Get:30 http://archive.ubuntu.com/ubuntu jammy/main amd64 mime-support all 3.66 [3696 B]
Get:31 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2 amd64 2.4.52-1ubuntu4.25 [97.9 kB]
Get:32 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssl amd64 3.0.2-0ubuntu1.30 [1186 kB]
Get:33 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ca-certificates all 20260816ubuntu0.22.04.1 [140 kB]
Get:34 http://archive.ubuntu.com/ubuntu jammy/main amd64 netbase all 6.3 [12.9 kB]
Get:35 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libmagic-mgc amd64 1:5.41-3ubuntu0.1 [257 kB]
Get:36 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libmagic1 amd64 1:5.41-3ubuntu0.1 [87.2 kB]
Get:37 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 file amd64 1:5.41-3ubuntu0.1 [21.5 kB]
Get:38 http://archive.ubuntu.com/ubuntu jammy/main amd64 publicsuffix all 20211207.1025-1 [129 kB]
Get:39 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 xz-utils amd64 5.2.5-2ubuntu1.2 [84.8 kB]
Get:40 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bzip2 amd64 1.0.8-5ubuntu0.1 [34.8 kB]
Get:41 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libldap-common all 2.5.20+dfsg-0ubuntu0.22.04.1 [16.4 kB]
Get:42 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-modules amd64 2.1.27+dfsg2-3ubuntu1.2 [68.8 kB]
Get:43 http://archive.ubuntu.com/ubuntu jammy/main amd64 ssl-cert all 1.1.2 [17.4 kB]
Fetched 25.6 MB in 4s (5817 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package perl-modules-5.34.
(Reading database ... 4393 files and directories currently installed.)
Preparing to unpack .../00-perl-modules-5.34_5.34.0-3ubuntu1.9_all.deb ...
Unpacking perl-modules-5.34 (5.34.0-3ubuntu1.9) ...
Selecting previously unselected package libgdbm6:amd64.
Preparing to unpack .../01-libgdbm6_1.23-1_amd64.deb ...
Unpacking libgdbm6:amd64 (1.23-1) ...
Selecting previously unselected package libgdbm-compat4:amd64.
Preparing to unpack .../02-libgdbm-compat4_1.23-1_amd64.deb ...
Unpacking libgdbm-compat4:amd64 (1.23-1) ...
Selecting previously unselected package libperl5.34:amd64.
Preparing to unpack .../03-libperl5.34_5.34.0-3ubuntu1.9_amd64.deb ...
Unpacking libperl5.34:amd64 (5.34.0-3ubuntu1.9) ...
Selecting previously unselected package perl.
Preparing to unpack .../04-perl_5.34.0-3ubuntu1.9_amd64.deb ...
Unpacking perl (5.34.0-3ubuntu1.9) ...
Selecting previously unselected package libapr1:amd64.
Preparing to unpack .../05-libapr1_1.7.0-8ubuntu0.22.04.2_amd64.deb ...
Unpacking libapr1:amd64 (1.7.0-8ubuntu0.22.04.2) ...
Selecting previously unselected package libexpat1:amd64.
Preparing to unpack .../06-libexpat1_2.4.7-1ubuntu0.9_amd64.deb ...
Unpacking libexpat1:amd64 (2.4.7-1ubuntu0.9) ...
Selecting previously unselected package libaprutil1:amd64.
Preparing to unpack .../07-libaprutil1_1.6.1-5ubuntu4.22.04.3_amd64.deb ...
Unpacking libaprutil1:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Selecting previously unselected package libsqlite3-0:amd64.
Preparing to unpack .../08-libsqlite3-0_3.37.2-2ubuntu0.8_amd64.deb ...
Unpacking libsqlite3-0:amd64 (3.37.2-2ubuntu0.8) ...
Selecting previously unselected package libaprutil1-dbd-sqlite3:amd64.
Preparing to unpack .../09-libaprutil1-dbd-sqlite3_1.6.1-5ubuntu4.22.04.3_amd64.deb ...
Unpacking libaprutil1-dbd-sqlite3:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Selecting previously unselected package libsasl2-modules-db:amd64.
Preparing to unpack .../10-libsasl2-modules-db_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-modules-db:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Selecting previously unselected package libsasl2-2:amd64.
Preparing to unpack .../11-libsasl2-2_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-2:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Selecting previously unselected package libldap-2.5-0:amd64.
Preparing to unpack .../12-libldap-2.5-0_2.5.20+dfsg-0ubuntu0.22.04.1_amd64.deb ...
Unpacking libldap-2.5-0:amd64 (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Selecting previously unselected package libaprutil1-ldap:amd64.
Preparing to unpack .../13-libaprutil1-ldap_1.6.1-5ubuntu4.22.04.3_amd64.deb ...
Unpacking libaprutil1-ldap:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Selecting previously unselected package libbrotli1:amd64.
Preparing to unpack .../14-libbrotli1_1.0.9-2ubuntu0.1_amd64.deb ...
Unpacking libbrotli1:amd64 (1.0.9-2ubuntu0.1) ...
Selecting previously unselected package libnghttp2-14:amd64.
Preparing to unpack .../15-libnghttp2-14_1.43.0-1ubuntu0.4_amd64.deb ...
Unpacking libnghttp2-14:amd64 (1.43.0-1ubuntu0.4) ...
Selecting previously unselected package libpsl5:amd64.
Preparing to unpack .../16-libpsl5_0.21.0-1.2build2_amd64.deb ...
Unpacking libpsl5:amd64 (0.21.0-1.2build2) ...
Selecting previously unselected package librtmp1:amd64.
Preparing to unpack .../17-librtmp1_2.4+20151223.gitfa8646d.1-2build4_amd64.deb ...
Unpacking librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build4) ...
Selecting previously unselected package libssh-4:amd64.
Preparing to unpack .../18-libssh-4_0.9.6-2ubuntu0.22.04.8_amd64.deb ...
Unpacking libssh-4:amd64 (0.9.6-2ubuntu0.22.04.8) ...
Selecting previously unselected package libcurl4:amd64.
Preparing to unpack .../19-libcurl4_7.81.0-1ubuntu1.30_amd64.deb ...
Unpacking libcurl4:amd64 (7.81.0-1ubuntu1.30) ...
Selecting previously unselected package libjansson4:amd64.
Preparing to unpack .../20-libjansson4_2.13.1-1.1build3_amd64.deb ...
Unpacking libjansson4:amd64 (2.13.1-1.1build3) ...
Selecting previously unselected package liblua5.3-0:amd64.
Preparing to unpack .../21-liblua5.3-0_5.3.6-1build1_amd64.deb ...
Unpacking liblua5.3-0:amd64 (5.3.6-1build1) ...
Selecting previously unselected package libicu70:amd64.
Preparing to unpack .../22-libicu70_70.1-2_amd64.deb ...
Unpacking libicu70:amd64 (70.1-2) ...
Selecting previously unselected package libxml2:amd64.
Preparing to unpack .../23-libxml2_2.9.13+dfsg-1ubuntu0.14_amd64.deb ...
Unpacking libxml2:amd64 (2.9.13+dfsg-1ubuntu0.14) ...
Selecting previously unselected package apache2-bin.
Preparing to unpack .../24-apache2-bin_2.4.52-1ubuntu4.25_amd64.deb ...
Unpacking apache2-bin (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package apache2-data.
Preparing to unpack .../25-apache2-data_2.4.52-1ubuntu4.25_all.deb ...
Unpacking apache2-data (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package apache2-utils.
Preparing to unpack .../26-apache2-utils_2.4.52-1ubuntu4.25_amd64.deb ...
Unpacking apache2-utils (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package media-types.
Preparing to unpack .../27-media-types_7.0.0_all.deb ...
Unpacking media-types (7.0.0) ...
Selecting previously unselected package mailcap.
Preparing to unpack .../28-mailcap_3.70+nmu1ubuntu1.22.04.1_all.deb ...
Unpacking mailcap (3.70+nmu1ubuntu1.22.04.1) ...
Selecting previously unselected package mime-support.
Preparing to unpack .../29-mime-support_3.66_all.deb ...
Unpacking mime-support (3.66) ...
Selecting previously unselected package apache2.
Preparing to unpack .../30-apache2_2.4.52-1ubuntu4.25_amd64.deb ...
Unpacking apache2 (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package openssl.
Preparing to unpack .../31-openssl_3.0.2-0ubuntu1.30_amd64.deb ...
Unpacking openssl (3.0.2-0ubuntu1.30) ...
Selecting previously unselected package ca-certificates.
Preparing to unpack .../32-ca-certificates_20260816ubuntu0.22.04.1_all.deb ...
Unpacking ca-certificates (20260816ubuntu0.22.04.1) ...
Selecting previously unselected package netbase.
Preparing to unpack .../33-netbase_6.3_all.deb ...
Unpacking netbase (6.3) ...
Selecting previously unselected package libmagic-mgc.
Preparing to unpack .../34-libmagic-mgc_1%3a5.41-3ubuntu0.1_amd64.deb ...
Unpacking libmagic-mgc (1:5.41-3ubuntu0.1) ...
Selecting previously unselected package libmagic1:amd64.
Preparing to unpack .../35-libmagic1_1%3a5.41-3ubuntu0.1_amd64.deb ...
Unpacking libmagic1:amd64 (1:5.41-3ubuntu0.1) ...
Selecting previously unselected package file.
Preparing to unpack .../36-file_1%3a5.41-3ubuntu0.1_amd64.deb ...
Unpacking file (1:5.41-3ubuntu0.1) ...
Selecting previously unselected package publicsuffix.
Preparing to unpack .../37-publicsuffix_20211207.1025-1_all.deb ...
Unpacking publicsuffix (20211207.1025-1) ...
Selecting previously unselected package xz-utils.
Preparing to unpack .../38-xz-utils_5.2.5-2ubuntu1.2_amd64.deb ...
Unpacking xz-utils (5.2.5-2ubuntu1.2) ...
Selecting previously unselected package bzip2.
Preparing to unpack .../39-bzip2_1.0.8-5ubuntu0.1_amd64.deb ...
Unpacking bzip2 (1.0.8-5ubuntu0.1) ...
Selecting previously unselected package libldap-common.
Preparing to unpack .../40-libldap-common_2.5.20+dfsg-0ubuntu0.22.04.1_all.deb ...
Unpacking libldap-common (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Selecting previously unselected package libsasl2-modules:amd64.
Preparing to unpack .../41-libsasl2-modules_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-modules:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Selecting previously unselected package ssl-cert.
Preparing to unpack .../42-ssl-cert_1.1.2_all.deb ...
Unpacking ssl-cert (1.1.2) ...
Setting up libexpat1:amd64 (2.4.7-1ubuntu0.9) ...
Setting up media-types (7.0.0) ...
Setting up libpsl5:amd64 (0.21.0-1.2build2) ...
Setting up libmagic-mgc (1:5.41-3ubuntu0.1) ...
Setting up libbrotli1:amd64 (1.0.9-2ubuntu0.1) ...
Setting up libsqlite3-0:amd64 (3.37.2-2ubuntu0.8) ...
Setting up libsasl2-modules:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up libnghttp2-14:amd64 (1.43.0-1ubuntu0.4) ...
Setting up libmagic1:amd64 (1:5.41-3ubuntu0.1) ...
Setting up libapr1:amd64 (1.7.0-8ubuntu0.22.04.2) ...
Setting up file (1:5.41-3ubuntu0.1) ...
Setting up perl-modules-5.34 (5.34.0-3ubuntu1.9) ...
Setting up bzip2 (1.0.8-5ubuntu0.1) ...
Setting up libldap-common (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Setting up libjansson4:amd64 (2.13.1-1.1build3) ...
Setting up libsasl2-modules-db:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build4) ...
Setting up xz-utils (5.2.5-2ubuntu1.2) ...
update-alternatives: using /usr/bin/xz to provide /usr/bin/lzma (lzma) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/lzma.1.gz because associated file /usr/share/man/man1/xz.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/unlzma.1.gz because associated file /usr/share/man/man1/unxz.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzcat.1.gz because associated file /usr/share/man/man1/xzcat.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzmore.1.gz because associated file /usr/share/man/man1/xzmore.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzless.1.gz because associated file /usr/share/man/man1/xzless.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzdiff.1.gz because associated file /usr/share/man/man1/xzdiff.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzcmp.1.gz because associated file /usr/share/man/man1/xzcmp.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzgrep.1.gz because associated file /usr/share/man/man1/xzgrep.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzegrep.1.gz because associated file /usr/share/man/man1/xzegrep.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzfgrep.1.gz because associated file /usr/share/man/man1/xzfgrep.1.gz (of link group lzma) doesn't exist
Setting up libsasl2-2:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up libssh-4:amd64 (0.9.6-2ubuntu0.22.04.8) ...
Setting up liblua5.3-0:amd64 (5.3.6-1build1) ...
Setting up netbase (6.3) ...
Setting up apache2-data (2.4.52-1ubuntu4.25) ...
Setting up openssl (3.0.2-0ubuntu1.30) ...
Setting up publicsuffix (20211207.1025-1) ...
Setting up libgdbm6:amd64 (1.23-1) ...
Setting up libicu70:amd64 (70.1-2) ...
Setting up libaprutil1:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Setting up libaprutil1-dbd-sqlite3:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Setting up libldap-2.5-0:amd64 (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Setting up ca-certificates (20260816ubuntu0.22.04.1) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 78.)
debconf: falling back to frontend: Readline
Updating certificates in /etc/ssl/certs...
120 added, 0 removed; done.
Setting up ssl-cert (1.1.2) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 78.)
debconf: falling back to frontend: Readline
Setting up libgdbm-compat4:amd64 (1.23-1) ...
Setting up libcurl4:amd64 (7.81.0-1ubuntu1.30) ...
Setting up libxml2:amd64 (2.9.13+dfsg-1ubuntu0.14) ...
Setting up apache2-utils (2.4.52-1ubuntu4.25) ...
Setting up libperl5.34:amd64 (5.34.0-3ubuntu1.9) ...
Setting up libaprutil1-ldap:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Setting up perl (5.34.0-3ubuntu1.9) ...
Setting up mailcap (3.70+nmu1ubuntu1.22.04.1) ...
Setting up mime-support (3.66) ...
Setting up apache2-bin (2.4.52-1ubuntu4.25) ...
Setting up apache2 (2.4.52-1ubuntu4.25) ...
Enabling module mpm_event.
Enabling module authz_core.
Enabling module authz_host.
Enabling module authn_core.
Enabling module auth_basic.
Enabling module access_compat.
Enabling module authn_file.
Enabling module authz_user.
Enabling module alias.
Enabling module dir.
Enabling module autoindex.
Enabling module env.
Enabling module mime.
Enabling module negotiation.
Enabling module setenvif.
Enabling module filter.
Enabling module deflate.
Enabling module status.
Enabling module reqtimeout.
Enabling conf charset.
Enabling conf localized-error-pages.
Enabling conf other-vhosts-access-log.
Enabling conf security.
Enabling conf serve-cgi-bin.
Enabling site 000-default.
invoke-rc.d: could not determine current runlevel
invoke-rc.d: policy-rc.d denied execution of start.
Processing triggers for libc-bin (2.35-0ubuntu3.15) ...
Processing triggers for ca-certificates (20260816ubuntu0.22.04.1) ...
Updating certificates in /etc/ssl/certs...
0 added, 0 removed; done.
Running hooks in /etc/ca-certificates/update.d...
done.
```

```
root@59631fe7af30:/# service apache2 start
 * Starting Apache httpd web server apache2                                             AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.17.0.2. Set the 'ServerName' directive globally to suppress this message
 *
```

```
root@59631fe7af30:/# service apache2 start
 * Starting Apache httpd web server apache2                                              *
root@59631fe7af30:/# exit
exit

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu1
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED         STATUS         PORTS                                     NAMES
59631fe7af30   ubuntu:22.04   "/bin/bash"   7 minutes ago   Up 7 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu1
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it -d -p 8081:80 --name ubuntu2 ubuntu:22.04
8890d5010408a4e8b9a97117b59d2d9c7b17e1cdf9a0357c542e6930da7d9feb
docker: Error response from daemon: failed to set up container networking: driver failed programming external connectivity on endpoint ubuntu2 (e1da051fbe1e71762ecd96dede73d535bbd9f80679898da1ad8bafafcf8579dd): Bind for 0.0.0.0:8081 failed: port is already allocated

Run 'docker run --help' for more information

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED         STATUS         PORTS                                     NAMES
59631fe7af30   ubuntu:22.04   "/bin/bash"   9 minutes ago   Up 9 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu1
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5>                                 docker exec -it ubuntu1 bash
root@59631fe7af30:/# exit
exit

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu1
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS                                     NAMES
59631fe7af30   ubuntu:22.04   "/bin/bash"   10 minutes ago   Up 10 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu1
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\sessio 5>
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS                                     NAMES
59631fe7af30   ubuntu:22.04   "/bin/bash"   15 minutes ago   Up 15 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu1
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5>     docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS                                     NAMES
59631fe7af30   ubuntu:22.04   "/bin/bash"   16 minutes ago   Up 16 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu1

```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu1 bash
root@59631fe7af30:/# ifconfig
bash: ifconfig: command not found
```

```
root@59631fe7af30:/# apt update
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu jammy-security InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
```

```
root@59631fe7af30:/# apt install net-tools
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  net-tools
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 204 kB of archives.
After this operation, 819 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 net-tools amd64 1.60+git20181103.0eebece-1ubuntu5.4 [204 kB]
Fetched 204 kB in 1s (332 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package net-tools.
(Reading database ... 7841 files and directories currently installed.)
Preparing to unpack .../net-tools_1.60+git20181103.0eebece-1ubuntu5.4_amd64.deb ...
Unpacking net-tools (1.60+git20181103.0eebece-1ubuntu5.4) ...
Setting up net-tools (1.60+git20181103.0eebece-1ubuntu5.4) ...
```

```
root@59631fe7af30:/# ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.2  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 42:5c:a1:5c:2d:88  txqueuelen 0  (Ethernet)
        RX packets 60493  bytes 86787138 (86.7 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 32568  bytes 2237118 (2.2 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

root@59631fe7af30:/# exit
exit

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu1
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it -d ubuntu:22.04

8f40bc260e2c95f3754294b0063dd4c29d84a69417a869159bb5c7d9e30ba303
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS                                     NAMES
8f40bc260e2c   ubuntu:22.04   "/bin/bash"   4 seconds ago    Up 4 seconds                                              keen_wing
59631fe7af30   ubuntu:22.04   "/bin/bash"   18 minutes ago   Up 18 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu1
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it -d -p 8081:80 --name ubuntu2 ubuntu:22.04
docker: Error response from daemon: Conflict. The container name "/ubuntu2" is already in use by container "8890d5010408a4e8b9a97117b59d2d9c7b17e1cdf9a0357c542e6930da7d9feb". You have to remove (or rename) that container to be able to reuse that name.

Run 'docker run --help' for more information

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS                                     NAMES
8f40bc260e2c   ubuntu:22.04   "/bin/bash"   2 minutes ago    Up 2 minutes                                              keen_wing
59631fe7af30   ubuntu:22.04   "/bin/bash"   20 minutes ago   Up 20 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu1
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5>                   docker run -it -d -p 8081:80 --name ubuntu2 ubuntu:22.04
docker: Error response from daemon: Conflict. The container name "/ubuntu2" is already in use by container "8890d5010408a4e8b9a97117b59d2d9c7b17e1cdf9a0357c542e6930da7d9feb". You have to remove (or rename) that container to be able to reuse that name.

Run 'docker run --help' for more information

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps -all
CONTAINER ID   IMAGE          COMMAND       CREATED         STATUS         PORTS     NAMES
8f40bc260e2c   ubuntu:22.04   "/bin/bash"   3 minutes ago   Up 3 minutes             keen_wing
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it -d -p 8081:80 --name ubuntu2 ubuntu:22.04
docker: Error response from daemon: Conflict. The container name "/ubuntu2" is already in use by container "8890d5010408a4e8b9a97117b59d2d9c7b17e1cdf9a0357c542e6930da7d9feb". You have to remove (or rename) that container to be able to reuse that name.

Run 'docker run --help' for more information

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it -d -p 8081:80 --name ubuntu2 ubuntu:22.04
b21a801609389769ea6f9a778f18f84dceaa6fd0011035e7d4f7099ce61b9ea2
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS                                     NAMES
b21a80160938   ubuntu:22.04   "/bin/bash"   10 seconds ago   Up 10 seconds   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu2
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it -d -p 8081:80 --name ubuntu1 ubuntu:22.04
b6e83a91c5fa9e1cc0e984f41b51ea9321435e3306cfbc5d4ac2e6db9b2e9234
docker: Error response from daemon: failed to set up container networking: driver failed programming external connectivity on endpoint ubuntu1 (12e7c83b3f39ab68a5060d905acb39d9ce23a2ef818f4c03bfbb20a1695b1ee1): Bind for 0.0.0.0:8081 failed: port is already allocated

Run 'docker run --help' for more information

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it -d -p 8082:80 --name ubuntu1 ubuntu:22.04
docker: Error response from daemon: Conflict. The container name "/ubuntu1" is already in use by container "b6e83a91c5fa9e1cc0e984f41b51ea9321435e3306cfbc5d4ac2e6db9b2e9234". You have to remove (or rename) that container to be able to reuse that name.

Run 'docker run --help' for more information

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS                                     NAMES
b21a80160938   ubuntu:22.04   "/bin/bash"   56 seconds ago   Up 56 seconds   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu2
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it -d -p 8082:80 --name ubuntu1 ubuntu:22.04
docker: Error response from daemon: Conflict. The container name "/ubuntu1" is already in use by container "b6e83a91c5fa9e1cc0e984f41b51ea9321435e3306cfbc5d4ac2e6db9b2e9234". You have to remove (or rename) that container to be able to reuse that name.

Run 'docker run --help' for more information

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -it -d -p 8082:80 --name ubuntu1 ubuntu:22.04
f6013e9a6956dabe1236d74ae55bc02d62ea5ac647eb5f67098e62f83c1b2f8d
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED         STATUS         PORTS                                     NAMES
f6013e9a6956   ubuntu:22.04   "/bin/bash"   7 seconds ago   Up 6 seconds   0.0.0.0:8082->80/tcp, [::]:8082->80/tcp   ubuntu1
b21a80160938   ubuntu:22.04   "/bin/bash"   2 minutes ago   Up 2 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu2
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\sess> docker exec -it ubuntu1 bash
root@f6013e9a6956:/# apt update
Get:1 http://archive.ubuntu.com/ubuntu jammy InRelease [270 kB]
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
Get:4 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [96.8 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
Get:6 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [1325 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [17.5 MB]
Get:8 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [7955 kB]
Get:9 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [4430 kB]
Get:10 http://archive.ubuntu.com/ubuntu jammy/restricted amd64 Packages [164 kB]
Get:11 http://archive.ubuntu.com/ubuntu jammy/main amd64 Packages [1792 kB]
Get:12 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [266 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [104 kB]
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [8289 kB]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1629 kB]
Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [4792 kB]
Get:17 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [35.6 kB]
Get:18 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [82.9 kB]
Fetched 49.1 MB in 6s (8774 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
```

```
root@f6013e9a6956:/# install apache 2
install: cannot stat 'apache': No such file or directory
```

```
root@f6013e9a6956:/# apt install apa
che 2
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Package apache is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source

E: Package 'apache' has no installation candidate
E: Unable to locate package 2
root@f6013e9a6956:/# apt install apache2
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  apache2-bin apache2-data
  apache2-utils bzip2
  ca-certificates file libapr1
  libaprutil1
  libaprutil1-dbd-sqlite3
  libaprutil1-ldap libbrotli1
  libcurl4 libexpat1
  libgdbm-compat4 libgdbm6
  libicu70 libjansson4
  libldap-2.5-0 libldap-common
  liblua5.3-0 libmagic-mgc
  libmagic1 libnghttp2-14
  libperl5.34 libpsl5 librtmp1
  libsasl2-2 libsasl2-modules
  libsasl2-modules-db libsqlite3-0
  libssh-4 libxml2 mailcap
  media-types mime-support netbase
  openssl perl perl-modules-5.34
  publicsuffix ssl-cert xz-utils
Suggested packages:
  apache2-doc
  apache2-suexec-pristine
  | apache2-suexec-custom
  www-browser ufw bzip2-doc
  gdbm-l10n
  libsasl2-modules-gssapi-mit
  | libsasl2-modules-gssapi-heimdal
  libsasl2-modules-ldap
  libsasl2-modules-otp
  libsasl2-modules-sql perl-doc
  libterm-readline-gnu-perl
  | libterm-readline-perl-perl
  make libtap-harness-archive-perl
The following NEW packages will be installed:
  apache2 apache2-bin apache2-data
  apache2-utils bzip2
  ca-certificates file libapr1
  libaprutil1
  libaprutil1-dbd-sqlite3
  libaprutil1-ldap libbrotli1
  libcurl4 libexpat1
  libgdbm-compat4 libgdbm6
  libicu70 libjansson4
  libldap-2.5-0 libldap-common
  liblua5.3-0 libmagic-mgc
  libmagic1 libnghttp2-14
  libperl5.34 libpsl5 librtmp1
  libsasl2-2 libsasl2-modules
  libsasl2-modules-db libsqlite3-0
  libssh-4 libxml2 mailcap
  media-types mime-support netbase
  openssl perl perl-modules-5.34
  publicsuffix ssl-cert xz-utils
0 upgraded, 43 newly installed, 0 to remove and 0 not upgraded.
Need to get 25.6 MB of archives.
After this operation, 111 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 perl-modules-5.34 all 5.34.0-3ubuntu1.9 [2977 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libgdbm6 amd64 1.23-1 [33.9 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 libgdbm-compat4 amd64 1.23-1 [6606 B]
Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libperl5.34 amd64 5.34.0-3ubuntu1.9 [4796 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 perl amd64 5.34.0-3ubuntu1.9 [232 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libapr1 amd64 1.7.0-8ubuntu0.22.04.2 [108 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libexpat1 amd64 2.4.7-1ubuntu0.9 [96.9 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libaprutil1 amd64 1.6.1-5ubuntu4.22.04.3 [93.4 kB]
Get:9 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsqlite3-0 amd64 3.37.2-2ubuntu0.8 [642 kB]
Get:10 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libaprutil1-dbd-sqlite3 amd64 1.6.1-5ubuntu4.22.04.3 [11.4 kB]
Get:11 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-modules-db amd64 2.1.27+dfsg2-3ubuntu1.2 [20.5 kB]
Get:12 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-2 amd64 2.1.27+dfsg2-3ubuntu1.2 [53.8 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libldap-2.5-0 amd64 2.5.20+dfsg-0ubuntu0.22.04.1 [184 kB]
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libaprutil1-ldap amd64 1.6.1-5ubuntu4.22.04.3 [9164 B]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libbrotli1 amd64 1.0.9-2ubuntu0.1 [315 kB]
Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnghttp2-14 amd64 1.43.0-1ubuntu0.4 [76.9 kB]
Get:17 http://archive.ubuntu.com/ubuntu jammy/main amd64 libpsl5 amd64 0.21.0-1.2build2 [58.4 kB]
Get:18 http://archive.ubuntu.com/ubuntu jammy/main amd64 librtmp1 amd64 2.4+20151223.gitfa8646d.1-2build4 [58.2 kB]
Get:19 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libssh-4 amd64 0.9.6-2ubuntu0.22.04.8 [189 kB]
Get:20 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcurl4 amd64 7.81.0-1ubuntu1.30 [293 kB]
Get:21 http://archive.ubuntu.com/ubuntu jammy/main amd64 libjansson4 amd64 2.13.1-1.1build3 [32.4 kB]
Get:22 http://archive.ubuntu.com/ubuntu jammy/main amd64 liblua5.3-0 amd64 5.3.6-1build1 [140 kB]
Get:23 http://archive.ubuntu.com/ubuntu jammy/main amd64 libicu70 amd64 70.1-2 [10.6 MB]
Get:24 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libxml2 amd64 2.9.13+dfsg-1ubuntu0.14 [765 kB]
Get:25 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2-bin amd64 2.4.52-1ubuntu4.25 [1363 kB]
Get:26 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2-data all 2.4.52-1ubuntu4.25 [165 kB]
Get:27 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2-utils amd64 2.4.52-1ubuntu4.25 [90.5 kB]
Get:28 http://archive.ubuntu.com/ubuntu jammy/main amd64 media-types all 7.0.0 [25.5 kB]
Get:29 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 mailcap all 3.70+nmu1ubuntu1.22.04.1 [23.9 kB]
Get:30 http://archive.ubuntu.com/ubuntu jammy/main amd64 mime-support all 3.66 [3696 B]
Get:31 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2 amd64 2.4.52-1ubuntu4.25 [97.9 kB]
Get:32 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssl amd64 3.0.2-0ubuntu1.30 [1186 kB]
Get:33 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ca-certificates all 20260816ubuntu0.22.04.1 [140 kB]
Get:34 http://archive.ubuntu.com/ubuntu jammy/main amd64 netbase all 6.3 [12.9 kB]
Get:35 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libmagic-mgc amd64 1:5.41-3ubuntu0.1 [257 kB]
Get:36 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libmagic1 amd64 1:5.41-3ubuntu0.1 [87.2 kB]
Get:37 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 file amd64 1:5.41-3ubuntu0.1 [21.5 kB]
Get:38 http://archive.ubuntu.com/ubuntu jammy/main amd64 publicsuffix all 20211207.1025-1 [129 kB]
Get:39 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 xz-utils amd64 5.2.5-2ubuntu1.2 [84.8 kB]
Get:40 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bzip2 amd64 1.0.8-5ubuntu0.1 [34.8 kB]
Get:41 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libldap-common all 2.5.20+dfsg-0ubuntu0.22.04.1 [16.4 kB]
Get:42 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-modules amd64 2.1.27+dfsg2-3ubuntu1.2 [68.8 kB]
Get:43 http://archive.ubuntu.com/ubuntu jammy/main amd64 ssl-cert all 1.1.2 [17.4 kB]
Fetched 25.6 MB in 3s (10.0 MB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package perl-modules-5.34.
(Reading database ... 4393 files and directories currently installed.)
Preparing to unpack .../00-perl-modules-5.34_5.34.0-3ubuntu1.9_all.deb ...
Unpacking perl-modules-5.34 (5.34.0-3ubuntu1.9) ...
Selecting previously unselected package libgdbm6:amd64.
Preparing to unpack .../01-libgdbm6_1.23-1_amd64.deb ...
Unpacking libgdbm6:amd64 (1.23-1) ...
Selecting previously unselected package libgdbm-compat4:amd64.
Preparing to unpack .../02-libgdbm-compat4_1.23-1_amd64.deb ...
Unpacking libgdbm-compat4:amd64 (1.23-1) ...
Selecting previously unselected package libperl5.34:amd64.
Preparing to unpack .../03-libperl5.34_5.34.0-3ubuntu1.9_amd64.deb ...
Unpacking libperl5.34:amd64 (5.34.0-3ubuntu1.9) ...
Selecting previously unselected package perl.
Preparing to unpack .../04-perl_5.34.0-3ubuntu1.9_amd64.deb ...
Unpacking perl (5.34.0-3ubuntu1.9) ...
Selecting previously unselected package libapr1:amd64.
Preparing to unpack .../05-libapr1_1.7.0-8ubuntu0.22.04.2_amd64.deb ...
Unpacking libapr1:amd64 (1.7.0-8ubuntu0.22.04.2) ...
Selecting previously unselected package libexpat1:amd64.
Preparing to unpack .../06-libexpat1_2.4.7-1ubuntu0.9_amd64.deb ...
Unpacking libexpat1:amd64 (2.4.7-1ubuntu0.9) ...
Selecting previously unselected package libaprutil1:amd64.
Preparing to unpack .../07-libaprutil1_1.6.1-5ubuntu4.22.04.3_amd64.deb ...
Unpacking libaprutil1:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Selecting previously unselected package libsqlite3-0:amd64.
Preparing to unpack .../08-libsqlite3-0_3.37.2-2ubuntu0.8_amd64.deb ...
Unpacking libsqlite3-0:amd64 (3.37.2-2ubuntu0.8) ...
Selecting previously unselected package libaprutil1-dbd-sqlite3:amd64.
Preparing to unpack .../09-libaprutil1-dbd-sqlite3_1.6.1-5ubuntu4.22.04.3_amd64.deb ...
Unpacking libaprutil1-dbd-sqlite3:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Selecting previously unselected package libsasl2-modules-db:amd64.
Preparing to unpack .../10-libsasl2-modules-db_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-modules-db:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Selecting previously unselected package libsasl2-2:amd64.
Preparing to unpack .../11-libsasl2-2_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-2:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Selecting previously unselected package libldap-2.5-0:amd64.
Preparing to unpack .../12-libldap-2.5-0_2.5.20+dfsg-0ubuntu0.22.04.1_amd64.deb ...
Unpacking libldap-2.5-0:amd64 (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Selecting previously unselected package libaprutil1-ldap:amd64.
Preparing to unpack .../13-libaprutil1-ldap_1.6.1-5ubuntu4.22.04.3_amd64.deb ...
Unpacking libaprutil1-ldap:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Selecting previously unselected package libbrotli1:amd64.
Preparing to unpack .../14-libbrotli1_1.0.9-2ubuntu0.1_amd64.deb ...
Unpacking libbrotli1:amd64 (1.0.9-2ubuntu0.1) ...
Selecting previously unselected package libnghttp2-14:amd64.
Preparing to unpack .../15-libnghttp2-14_1.43.0-1ubuntu0.4_amd64.deb ...
Unpacking libnghttp2-14:amd64 (1.43.0-1ubuntu0.4) ...
Selecting previously unselected package libpsl5:amd64.
Preparing to unpack .../16-libpsl5_0.21.0-1.2build2_amd64.deb ...
Unpacking libpsl5:amd64 (0.21.0-1.2build2) ...
Selecting previously unselected package librtmp1:amd64.
Preparing to unpack .../17-librtmp1_2.4+20151223.gitfa8646d.1-2build4_amd64.deb ...
Unpacking librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build4) ...
Selecting previously unselected package libssh-4:amd64.
Preparing to unpack .../18-libssh-4_0.9.6-2ubuntu0.22.04.8_amd64.deb ...
Unpacking libssh-4:amd64 (0.9.6-2ubuntu0.22.04.8) ...
Selecting previously unselected package libcurl4:amd64.
Preparing to unpack .../19-libcurl4_7.81.0-1ubuntu1.30_amd64.deb ...
Unpacking libcurl4:amd64 (7.81.0-1ubuntu1.30) ...
Selecting previously unselected package libjansson4:amd64.
Preparing to unpack .../20-libjansson4_2.13.1-1.1build3_amd64.deb ...
Unpacking libjansson4:amd64 (2.13.1-1.1build3) ...
Selecting previously unselected package liblua5.3-0:amd64.
Preparing to unpack .../21-liblua5.3-0_5.3.6-1build1_amd64.deb ...
Unpacking liblua5.3-0:amd64 (5.3.6-1build1) ...
Selecting previously unselected package libicu70:amd64.
Preparing to unpack .../22-libicu70_70.1-2_amd64.deb ...
Unpacking libicu70:amd64 (70.1-2) ...
Selecting previously unselected package libxml2:amd64.
Preparing to unpack .../23-libxml2_2.9.13+dfsg-1ubuntu0.14_amd64.deb ...
Unpacking libxml2:amd64 (2.9.13+dfsg-1ubuntu0.14) ...
Selecting previously unselected package apache2-bin.
Preparing to unpack .../24-apache2-bin_2.4.52-1ubuntu4.25_amd64.deb ...
Unpacking apache2-bin (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package apache2-data.
Preparing to unpack .../25-apache2-data_2.4.52-1ubuntu4.25_all.deb ...
Unpacking apache2-data (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package apache2-utils.
Preparing to unpack .../26-apache2-utils_2.4.52-1ubuntu4.25_amd64.deb ...
Unpacking apache2-utils (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package media-types.
Preparing to unpack .../27-media-types_7.0.0_all.deb ...
Unpacking media-types (7.0.0) ...
Selecting previously unselected package mailcap.
Preparing to unpack .../28-mailcap_3.70+nmu1ubuntu1.22.04.1_all.deb ...
Unpacking mailcap (3.70+nmu1ubuntu1.22.04.1) ...
Selecting previously unselected package mime-support.
Preparing to unpack .../29-mime-support_3.66_all.deb ...
Unpacking mime-support (3.66) ...
Selecting previously unselected package apache2.
Preparing to unpack .../30-apache2_2.4.52-1ubuntu4.25_amd64.deb ...
Unpacking apache2 (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package openssl.
Preparing to unpack .../31-openssl_3.0.2-0ubuntu1.30_amd64.deb ...
Unpacking openssl (3.0.2-0ubuntu1.30) ...
Selecting previously unselected package ca-certificates.
Preparing to unpack .../32-ca-certificates_20260816ubuntu0.22.04.1_all.deb ...
Unpacking ca-certificates (20260816ubuntu0.22.04.1) ...
Selecting previously unselected package netbase.
Preparing to unpack .../33-netbase_6.3_all.deb ...
Unpacking netbase (6.3) ...
Selecting previously unselected package libmagic-mgc.
Preparing to unpack .../34-libmagic-mgc_1%3a5.41-3ubuntu0.1_amd64.deb ...
Unpacking libmagic-mgc (1:5.41-3ubuntu0.1) ...
Selecting previously unselected package libmagic1:amd64.
Preparing to unpack .../35-libmagic1_1%3a5.41-3ubuntu0.1_amd64.deb ...
Unpacking libmagic1:amd64 (1:5.41-3ubuntu0.1) ...
Selecting previously unselected package file.
Preparing to unpack .../36-file_1%3a5.41-3ubuntu0.1_amd64.deb ...
Unpacking file (1:5.41-3ubuntu0.1) ...
Selecting previously unselected package publicsuffix.
Preparing to unpack .../37-publicsuffix_20211207.1025-1_all.deb ...
Unpacking publicsuffix (20211207.1025-1) ...
Selecting previously unselected package xz-utils.
Preparing to unpack .../38-xz-utils_5.2.5-2ubuntu1.2_amd64.deb ...
Unpacking xz-utils (5.2.5-2ubuntu1.2) ...
Selecting previously unselected package bzip2.
Preparing to unpack .../39-bzip2_1.0.8-5ubuntu0.1_amd64.deb ...
Unpacking bzip2 (1.0.8-5ubuntu0.1) ...
Selecting previously unselected package libldap-common.
Preparing to unpack .../40-libldap-common_2.5.20+dfsg-0ubuntu0.22.04.1_all.deb ...
Unpacking libldap-common (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Selecting previously unselected package libsasl2-modules:amd64.
Preparing to unpack .../41-libsasl2-modules_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-modules:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Selecting previously unselected package ssl-cert.
Preparing to unpack .../42-ssl-cert_1.1.2_all.deb ...
Unpacking ssl-cert (1.1.2) ...
Setting up libexpat1:amd64 (2.4.7-1ubuntu0.9) ...
Setting up media-types (7.0.0) ...
Setting up libpsl5:amd64 (0.21.0-1.2build2) ...
Setting up libmagic-mgc (1:5.41-3ubuntu0.1) ...
Setting up libbrotli1:amd64 (1.0.9-2ubuntu0.1) ...
Setting up libsqlite3-0:amd64 (3.37.2-2ubuntu0.8) ...
Setting up libsasl2-modules:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up libnghttp2-14:amd64 (1.43.0-1ubuntu0.4) ...
Setting up libmagic1:amd64 (1:5.41-3ubuntu0.1) ...
Setting up libapr1:amd64 (1.7.0-8ubuntu0.22.04.2) ...
Setting up file (1:5.41-3ubuntu0.1) ...
Setting up perl-modules-5.34 (5.34.0-3ubuntu1.9) ...
Setting up bzip2 (1.0.8-5ubuntu0.1) ...
Setting up libldap-common (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Setting up libjansson4:amd64 (2.13.1-1.1build3) ...
Setting up libsasl2-modules-db:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build4) ...
Setting up xz-utils (5.2.5-2ubuntu1.2) ...
update-alternatives: using /usr/bin/xz to provide /usr/bin/lzma (lzma) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/lzma.1.gz because associated file /usr/share/man/man1/xz.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/unlzma.1.gz because associated file /usr/share/man/man1/unxz.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzcat.1.gz because associated file /usr/share/man/man1/xzcat.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzmore.1.gz because associated file /usr/share/man/man1/xzmore.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzless.1.gz because associated file /usr/share/man/man1/xzless.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzdiff.1.gz because associated file /usr/share/man/man1/xzdiff.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzcmp.1.gz because associated file /usr/share/man/man1/xzcmp.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzgrep.1.gz because associated file /usr/share/man/man1/xzgrep.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzegrep.1.gz because associated file /usr/share/man/man1/xzegrep.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzfgrep.1.gz because associated file /usr/share/man/man1/xzfgrep.1.gz (of link group lzma) doesn't exist
Setting up libsasl2-2:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up libssh-4:amd64 (0.9.6-2ubuntu0.22.04.8) ...
Setting up liblua5.3-0:amd64 (5.3.6-1build1) ...
Setting up netbase (6.3) ...
Setting up apache2-data (2.4.52-1ubuntu4.25) ...
Setting up openssl (3.0.2-0ubuntu1.30) ...
Setting up publicsuffix (20211207.1025-1) ...
Setting up libgdbm6:amd64 (1.23-1) ...
Setting up libicu70:amd64 (70.1-2) ...
Setting up libaprutil1:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Setting up libaprutil1-dbd-sqlite3:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Setting up libldap-2.5-0:amd64 (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Setting up ca-certificates (20260816ubuntu0.22.04.1) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 78.)
debconf: falling back to frontend: Readline
Updating certificates in /etc/ssl/certs...
120 added, 0 removed; done.
Setting up ssl-cert (1.1.2) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 78.)
debconf: falling back to frontend: Readline
Setting up libgdbm-compat4:amd64 (1.23-1) ...
Setting up libcurl4:amd64 (7.81.0-1ubuntu1.30) ...
Setting up libxml2:amd64 (2.9.13+dfsg-1ubuntu0.14) ...
Setting up apache2-utils (2.4.52-1ubuntu4.25) ...
Setting up libperl5.34:amd64 (5.34.0-3ubuntu1.9) ...
Setting up libaprutil1-ldap:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Setting up perl (5.34.0-3ubuntu1.9) ...
Setting up mailcap (3.70+nmu1ubuntu1.22.04.1) ...
Setting up mime-support (3.66) ...
Setting up apache2-bin (2.4.52-1ubuntu4.25) ...
Setting up apache2 (2.4.52-1ubuntu4.25) ...
Enabling module mpm_event.
Enabling module authz_core.
Enabling module authz_host.
Enabling module authn_core.
Enabling module auth_basic.
Enabling module access_compat.
Enabling module authn_file.
Enabling module authz_user.
Enabling module alias.
Enabling module dir.
Enabling module autoindex.
Enabling module env.
Enabling module mime.
Enabling module negotiation.
Enabling module setenvif.
Enabling module filter.
Enabling module deflate.
Enabling module status.
Enabling module reqtimeout.
Enabling conf charset.
Enabling conf localized-error-pages.
Enabling conf other-vhosts-access-log.
Enabling conf security.
Enabling conf serve-cgi-bin.
Enabling site 000-default.
invoke-rc.d: could not determine current runlevel
invoke-rc.d: policy-rc.d denied execution of start.
Processing triggers for libc-bin (2.35-0ubuntu3.15) ...
Processing triggers for ca-certificates (20260816ubuntu0.22.04.1) ...
Updating certificates in /etc/ssl/certs...
0 added, 0 removed; done.
Running hooks in /etc/ca-certificates/update.d...
done.
```

```
root@f6013e9a6956:/# service apache2 start
 * Starting Apache httpd web server apache2                             AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.17.0.3. Set the 'ServerName' directive globally to suppress this message
 *
root@f6013e9a6956:/# exit
exit

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu1
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED         STATUS         PORTS                                     NAMES
f6013e9a6956   ubuntu:22.04   "/bin/bash"   4 minutes ago   Up 4 minutes   0.0.0.0:8082->80/tcp, [::]:8082->80/tcp   ubuntu1
b21a80160938   ubuntu:22.04   "/bin/bash"   6 minutes ago   Up 6 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu2
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu1 bash
root@f6013e9a6956:/# ifconfig
bash: ifconfig: command not found
```

```
root@f6013e9a6956:/# apt install iputils-ping
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libcap2-bin libpam-cap
The following NEW packages will be installed:
  iputils-ping libcap2-bin
  libpam-cap
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 77.0 kB of archives.
After this operation, 280 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcap2-bin amd64 1:2.44-1ubuntu0.22.04.3 [26.0 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 iputils-ping amd64 3:20211215-1ubuntu0.1 [43.0 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libpam-cap amd64 1:2.44-1ubuntu0.22.04.3 [7928 B]
Fetched 77.0 kB in 0s (401 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package libcap2-bin.
(Reading database ... 7841 files and directories currently installed.)
Preparing to unpack .../libcap2-bin_1%3a2.44-1ubuntu0.22.04.3_amd64.deb ...
Unpacking libcap2-bin (1:2.44-1ubuntu0.22.04.3) ...
Selecting previously unselected package iputils-ping.
Preparing to unpack .../iputils-ping_3%3a20211215-1ubuntu0.1_amd64.deb ...
Unpacking iputils-ping (3:20211215-1ubuntu0.1) ...
Selecting previously unselected package libpam-cap:amd64.
Preparing to unpack .../libpam-cap_1%3a2.44-1ubuntu0.22.04.3_amd64.deb ...
Unpacking libpam-cap:amd64 (1:2.44-1ubuntu0.22.04.3) ...
Setting up libcap2-bin (1:2.44-1ubuntu0.22.04.3) ...
Setting up libpam-cap:amd64 (1:2.44-1ubuntu0.22.04.3) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 78.)
debconf: falling back to frontend: Readline
Setting up iputils-ping (3:20211215-1ubuntu0.1) ...
```

```
root@f6013e9a6956:/# apt install net-tools
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  net-tools
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 204 kB of archives.
After this operation, 819 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 net-tools amd64 1.60+git20181103.0eebece-1ubuntu5.4 [204 kB]
Fetched 204 kB in 0s (1460 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package net-tools.
(Reading database ... 7872 files and directories currently installed.)
Preparing to unpack .../net-tools_1.60+git20181103.0eebece-1ubuntu5.4_amd64.deb ...
Unpacking net-tools (1.60+git20181103.0eebece-1ubuntu5.4) ...
Setting up net-tools (1.60+git20181103.0eebece-1ubuntu5.4) ...
```

```
root@f6013e9a6956:/# ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.3  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 7e:ef:c0:71:e0:d3  txqueuelen 0  (Ethernet)
        RX packets 60964  bytes 87534912 (87.5 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 34086  bytes 2334861 (2.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

```

```
root@f6013e9a6956:/# apt-get update && apt-get install -y apache2
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu jammy-security InRelease
Reading package lists... Done
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
apache2 is already the newest version (2.4.52-1ubuntu4.25).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
```

```
root@f6013e9a6956:/# expose 80
bash: expose: command not found
```

```
root@f6013e9a6956:/# EXPOSE 80
bash: EXPOSE: command not found
```

```
root@f6013e9a6956:/# apt install apache2
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
apache2 is already the newest version (2.4.52-1ubuntu4.25).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
```

```
root@f6013e9a6956:/# service apache2 start
 * Starting Apache httpd web server apache2                              *
root@f6013e9a6956:/# exit
exit

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu1
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS                                     NAMES
f6013e9a6956   ubuntu:22.04   "/bin/bash"   9 minutes ago    Up 9 minutes    0.0.0.0:8082->80/tcp, [::]:8082->80/tcp   ubuntu1
b21a80160938   ubuntu:22.04   "/bin/bash"   11 minutes ago   Up 11 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu2
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu2 bash
root@b21a80160938:/# ifconfig
bash: ifconfig: command not found
```

```
root@b21a80160938:/# apt install iputils-ping
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package iputils-ping
```

```
root@b21a80160938:/# apt install net-tools
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
E: Unable to locate package net-tools
```

```
root@b21a80160938:/# apt update
Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy InRelease [270 kB]
Get:3 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [1325 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
Get:5 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [96.8 kB]
Get:6 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [7955 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy/restricted amd64 Packages [164 kB]
Get:9 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [266 kB]
Get:10 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [4430 kB]
Get:11 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [17.5 MB]
Get:12 http://archive.ubuntu.com/ubuntu jammy/main amd64 Packages [1792 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [104 kB]
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [8289 kB]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [4792 kB]
Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1629 kB]
Get:17 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [82.9 kB]
Get:18 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [35.6 kB]
Fetched 49.1 MB in 8s (6406 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
```

```
root@b21a80160938:/# apt install net-tools
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  net-tools
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 204 kB of archives.
After this operation, 819 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 net-tools amd64 1.60+git20181103.0eebece-1ubuntu5.4 [204 kB]
Fetched 204 kB in 1s (378 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package net-tools.
(Reading database ... 4393 files and directories currently installed.)
Preparing to unpack .../net-tools_1.60+git20181103.0eebece-1ubuntu5.4_amd64.deb ...
Unpacking net-tools (1.60+git20181103.0eebece-1ubuntu5.4) ...
Setting up net-tools (1.60+git20181103.0eebece-1ubuntu5.4) ...
```

```
root@b21a80160938:/# apt install iputils-ping
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libcap2-bin libpam-cap
The following NEW packages will be installed:
  iputils-ping libcap2-bin
  libpam-cap
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 77.0 kB of archives.
After this operation, 280 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcap2-bin amd64 1:2.44-1ubuntu0.22.04.3 [26.0 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 iputils-ping amd64 3:20211215-1ubuntu0.1 [43.0 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libpam-cap amd64 1:2.44-1ubuntu0.22.04.3 [7928 B]
Fetched 77.0 kB in 0s (177 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package libcap2-bin.
(Reading database ... 4442 files and directories currently installed.)
Preparing to unpack .../libcap2-bin_1%3a2.44-1ubuntu0.22.04.3_amd64.deb ...
Unpacking libcap2-bin (1:2.44-1ubuntu0.22.04.3) ...
Selecting previously unselected package iputils-ping.
Preparing to unpack .../iputils-ping_3%3a20211215-1ubuntu0.1_amd64.deb ...
Unpacking iputils-ping (3:20211215-1ubuntu0.1) ...
Selecting previously unselected package libpam-cap:amd64.
Preparing to unpack .../libpam-cap_1%3a2.44-1ubuntu0.22.04.3_amd64.deb ...
Unpacking libpam-cap:amd64 (1:2.44-1ubuntu0.22.04.3) ...
Setting up libcap2-bin (1:2.44-1ubuntu0.22.04.3) ...
Setting up libpam-cap:amd64 (1:2.44-1ubuntu0.22.04.3) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 78.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.34.0 /usr/local/share/perl/5.34.0 /usr/lib/x86_64-linux-gnu/perl5/5.34 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.34 /usr/share/perl/5.34 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 7.)
debconf: falling back to frontend: Teletype
Setting up iputils-ping (3:20211215-1ubuntu0.1) ...
```

```
root@b21a80160938:/# ipconfig
bash: ipconfig: command not found
root@b21a80160938:/# ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.2  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 42:39:a5:60:0a:6f  txqueuelen 0  (Ethernet)
        RX packets 39452  bytes 56749137 (56.7 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 22886  bytes 1556813 (1.5 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

```

```
root@b21a80160938:/# apt install apache2
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  apache2-bin apache2-data
  apache2-utils bzip2
  ca-certificates file libapr1
  libaprutil1
  libaprutil1-dbd-sqlite3
  libaprutil1-ldap libbrotli1
  libcurl4 libexpat1
  libgdbm-compat4 libgdbm6
  libicu70 libjansson4
  libldap-2.5-0 libldap-common
  liblua5.3-0 libmagic-mgc
  libmagic1 libnghttp2-14
  libperl5.34 libpsl5 librtmp1
  libsasl2-2 libsasl2-modules
  libsasl2-modules-db libsqlite3-0
  libssh-4 libxml2 mailcap
  media-types mime-support netbase
  openssl perl perl-modules-5.34
  publicsuffix ssl-cert xz-utils
Suggested packages:
  apache2-doc
  apache2-suexec-pristine
  | apache2-suexec-custom
  www-browser ufw bzip2-doc
  gdbm-l10n
  libsasl2-modules-gssapi-mit
  | libsasl2-modules-gssapi-heimdal
  libsasl2-modules-ldap
  libsasl2-modules-otp
  libsasl2-modules-sql perl-doc
  libterm-readline-gnu-perl
  | libterm-readline-perl-perl
  make libtap-harness-archive-perl
The following NEW packages will be installed:
  apache2 apache2-bin apache2-data
  apache2-utils bzip2
  ca-certificates file libapr1
  libaprutil1
  libaprutil1-dbd-sqlite3
  libaprutil1-ldap libbrotli1
  libcurl4 libexpat1
  libgdbm-compat4 libgdbm6
  libicu70 libjansson4
  libldap-2.5-0 libldap-common
  liblua5.3-0 libmagic-mgc
  libmagic1 libnghttp2-14
  libperl5.34 libpsl5 librtmp1
  libsasl2-2 libsasl2-modules
  libsasl2-modules-db libsqlite3-0
  libssh-4 libxml2 mailcap
  media-types mime-support netbase
  openssl perl perl-modules-5.34
  publicsuffix ssl-cert xz-utils
0 upgraded, 43 newly installed, 0 to remove and 0 not upgraded.
Need to get 25.6 MB of archives.
After this operation, 111 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 perl-modules-5.34 all 5.34.0-3ubuntu1.9 [2977 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libgdbm6 amd64 1.23-1 [33.9 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 libgdbm-compat4 amd64 1.23-1 [6606 B]
Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libperl5.34 amd64 5.34.0-3ubuntu1.9 [4796 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 perl amd64 5.34.0-3ubuntu1.9 [232 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libapr1 amd64 1.7.0-8ubuntu0.22.04.2 [108 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libexpat1 amd64 2.4.7-1ubuntu0.9 [96.9 kB]
Get:8 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libaprutil1 amd64 1.6.1-5ubuntu4.22.04.3 [93.4 kB]
Get:9 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsqlite3-0 amd64 3.37.2-2ubuntu0.8 [642 kB]
Get:10 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libaprutil1-dbd-sqlite3 amd64 1.6.1-5ubuntu4.22.04.3 [11.4 kB]
Get:11 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-modules-db amd64 2.1.27+dfsg2-3ubuntu1.2 [20.5 kB]
Get:12 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-2 amd64 2.1.27+dfsg2-3ubuntu1.2 [53.8 kB]
Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libldap-2.5-0 amd64 2.5.20+dfsg-0ubuntu0.22.04.1 [184 kB]
Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libaprutil1-ldap amd64 1.6.1-5ubuntu4.22.04.3 [9164 B]
Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libbrotli1 amd64 1.0.9-2ubuntu0.1 [315 kB]
Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnghttp2-14 amd64 1.43.0-1ubuntu0.4 [76.9 kB]
Get:17 http://archive.ubuntu.com/ubuntu jammy/main amd64 libpsl5 amd64 0.21.0-1.2build2 [58.4 kB]
Get:18 http://archive.ubuntu.com/ubuntu jammy/main amd64 librtmp1 amd64 2.4+20151223.gitfa8646d.1-2build4 [58.2 kB]
Get:19 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libssh-4 amd64 0.9.6-2ubuntu0.22.04.8 [189 kB]
Get:20 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcurl4 amd64 7.81.0-1ubuntu1.30 [293 kB]
Get:21 http://archive.ubuntu.com/ubuntu jammy/main amd64 libjansson4 amd64 2.13.1-1.1build3 [32.4 kB]
Get:22 http://archive.ubuntu.com/ubuntu jammy/main amd64 liblua5.3-0 amd64 5.3.6-1build1 [140 kB]
Get:23 http://archive.ubuntu.com/ubuntu jammy/main amd64 libicu70 amd64 70.1-2 [10.6 MB]
Get:24 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libxml2 amd64 2.9.13+dfsg-1ubuntu0.14 [765 kB]
Get:25 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2-bin amd64 2.4.52-1ubuntu4.25 [1363 kB]
Get:26 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2-data all 2.4.52-1ubuntu4.25 [165 kB]
Get:27 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2-utils amd64 2.4.52-1ubuntu4.25 [90.5 kB]
Get:28 http://archive.ubuntu.com/ubuntu jammy/main amd64 media-types all 7.0.0 [25.5 kB]
Get:29 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 mailcap all 3.70+nmu1ubuntu1.22.04.1 [23.9 kB]
Get:30 http://archive.ubuntu.com/ubuntu jammy/main amd64 mime-support all 3.66 [3696 B]
Get:31 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 apache2 amd64 2.4.52-1ubuntu4.25 [97.9 kB]
Get:32 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssl amd64 3.0.2-0ubuntu1.30 [1186 kB]
Get:33 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ca-certificates all 20260816ubuntu0.22.04.1 [140 kB]
Get:34 http://archive.ubuntu.com/ubuntu jammy/main amd64 netbase all 6.3 [12.9 kB]
Get:35 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libmagic-mgc amd64 1:5.41-3ubuntu0.1 [257 kB]
Get:36 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libmagic1 amd64 1:5.41-3ubuntu0.1 [87.2 kB]
Get:37 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 file amd64 1:5.41-3ubuntu0.1 [21.5 kB]
Get:38 http://archive.ubuntu.com/ubuntu jammy/main amd64 publicsuffix all 20211207.1025-1 [129 kB]
Get:39 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 xz-utils amd64 5.2.5-2ubuntu1.2 [84.8 kB]
Get:40 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bzip2 amd64 1.0.8-5ubuntu0.1 [34.8 kB]
Get:41 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libldap-common all 2.5.20+dfsg-0ubuntu0.22.04.1 [16.4 kB]
Get:42 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-modules amd64 2.1.27+dfsg2-3ubuntu1.2 [68.8 kB]
Get:43 http://archive.ubuntu.com/ubuntu jammy/main amd64 ssl-cert all 1.1.2 [17.4 kB]
Fetched 25.6 MB in 4s (6580 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package perl-modules-5.34.
(Reading database ... 4473 files and directories currently installed.)
Preparing to unpack .../00-perl-modules-5.34_5.34.0-3ubuntu1.9_all.deb ...
Unpacking perl-modules-5.34 (5.34.0-3ubuntu1.9) ...
Selecting previously unselected package libgdbm6:amd64.
Preparing to unpack .../01-libgdbm6_1.23-1_amd64.deb ...
Unpacking libgdbm6:amd64 (1.23-1) ...
Selecting previously unselected package libgdbm-compat4:amd64.
Preparing to unpack .../02-libgdbm-compat4_1.23-1_amd64.deb ...
Unpacking libgdbm-compat4:amd64 (1.23-1) ...
Selecting previously unselected package libperl5.34:amd64.
Preparing to unpack .../03-libperl5.34_5.34.0-3ubuntu1.9_amd64.deb ...
Unpacking libperl5.34:amd64 (5.34.0-3ubuntu1.9) ...
Selecting previously unselected package perl.
Preparing to unpack .../04-perl_5.34.0-3ubuntu1.9_amd64.deb ...
Unpacking perl (5.34.0-3ubuntu1.9) ...
Selecting previously unselected package libapr1:amd64.
Preparing to unpack .../05-libapr1_1.7.0-8ubuntu0.22.04.2_amd64.deb ...
Unpacking libapr1:amd64 (1.7.0-8ubuntu0.22.04.2) ...
Selecting previously unselected package libexpat1:amd64.
Preparing to unpack .../06-libexpat1_2.4.7-1ubuntu0.9_amd64.deb ...
Unpacking libexpat1:amd64 (2.4.7-1ubuntu0.9) ...
Selecting previously unselected package libaprutil1:amd64.
Preparing to unpack .../07-libaprutil1_1.6.1-5ubuntu4.22.04.3_amd64.deb ...
Unpacking libaprutil1:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Selecting previously unselected package libsqlite3-0:amd64.
Preparing to unpack .../08-libsqlite3-0_3.37.2-2ubuntu0.8_amd64.deb ...
Unpacking libsqlite3-0:amd64 (3.37.2-2ubuntu0.8) ...
Selecting previously unselected package libaprutil1-dbd-sqlite3:amd64.
Preparing to unpack .../09-libaprutil1-dbd-sqlite3_1.6.1-5ubuntu4.22.04.3_amd64.deb ...
Unpacking libaprutil1-dbd-sqlite3:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Selecting previously unselected package libsasl2-modules-db:amd64.
Preparing to unpack .../10-libsasl2-modules-db_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-modules-db:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Selecting previously unselected package libsasl2-2:amd64.
Preparing to unpack .../11-libsasl2-2_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-2:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Selecting previously unselected package libldap-2.5-0:amd64.
Preparing to unpack .../12-libldap-2.5-0_2.5.20+dfsg-0ubuntu0.22.04.1_amd64.deb ...
Unpacking libldap-2.5-0:amd64 (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Selecting previously unselected package libaprutil1-ldap:amd64.
Preparing to unpack .../13-libaprutil1-ldap_1.6.1-5ubuntu4.22.04.3_amd64.deb ...
Unpacking libaprutil1-ldap:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Selecting previously unselected package libbrotli1:amd64.
Preparing to unpack .../14-libbrotli1_1.0.9-2ubuntu0.1_amd64.deb ...
Unpacking libbrotli1:amd64 (1.0.9-2ubuntu0.1) ...
Selecting previously unselected package libnghttp2-14:amd64.
Preparing to unpack .../15-libnghttp2-14_1.43.0-1ubuntu0.4_amd64.deb ...
Unpacking libnghttp2-14:amd64 (1.43.0-1ubuntu0.4) ...
Selecting previously unselected package libpsl5:amd64.
Preparing to unpack .../16-libpsl5_0.21.0-1.2build2_amd64.deb ...
Unpacking libpsl5:amd64 (0.21.0-1.2build2) ...
Selecting previously unselected package librtmp1:amd64.
Preparing to unpack .../17-librtmp1_2.4+20151223.gitfa8646d.1-2build4_amd64.deb ...
Unpacking librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build4) ...
Selecting previously unselected package libssh-4:amd64.
Preparing to unpack .../18-libssh-4_0.9.6-2ubuntu0.22.04.8_amd64.deb ...
Unpacking libssh-4:amd64 (0.9.6-2ubuntu0.22.04.8) ...
Selecting previously unselected package libcurl4:amd64.
Preparing to unpack .../19-libcurl4_7.81.0-1ubuntu1.30_amd64.deb ...
Unpacking libcurl4:amd64 (7.81.0-1ubuntu1.30) ...
Selecting previously unselected package libjansson4:amd64.
Preparing to unpack .../20-libjansson4_2.13.1-1.1build3_amd64.deb ...
Unpacking libjansson4:amd64 (2.13.1-1.1build3) ...
Selecting previously unselected package liblua5.3-0:amd64.
Preparing to unpack .../21-liblua5.3-0_5.3.6-1build1_amd64.deb ...
Unpacking liblua5.3-0:amd64 (5.3.6-1build1) ...
Selecting previously unselected package libicu70:amd64.
Preparing to unpack .../22-libicu70_70.1-2_amd64.deb ...
Unpacking libicu70:amd64 (70.1-2) ...
Selecting previously unselected package libxml2:amd64.
Preparing to unpack .../23-libxml2_2.9.13+dfsg-1ubuntu0.14_amd64.deb ...
Unpacking libxml2:amd64 (2.9.13+dfsg-1ubuntu0.14) ...
Selecting previously unselected package apache2-bin.
Preparing to unpack .../24-apache2-bin_2.4.52-1ubuntu4.25_amd64.deb ...
Unpacking apache2-bin (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package apache2-data.
Preparing to unpack .../25-apache2-data_2.4.52-1ubuntu4.25_all.deb ...
Unpacking apache2-data (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package apache2-utils.
Preparing to unpack .../26-apache2-utils_2.4.52-1ubuntu4.25_amd64.deb ...
Unpacking apache2-utils (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package media-types.
Preparing to unpack .../27-media-types_7.0.0_all.deb ...
Unpacking media-types (7.0.0) ...
Selecting previously unselected package mailcap.
Preparing to unpack .../28-mailcap_3.70+nmu1ubuntu1.22.04.1_all.deb ...
Unpacking mailcap (3.70+nmu1ubuntu1.22.04.1) ...
Selecting previously unselected package mime-support.
Preparing to unpack .../29-mime-support_3.66_all.deb ...
Unpacking mime-support (3.66) ...
Selecting previously unselected package apache2.
Preparing to unpack .../30-apache2_2.4.52-1ubuntu4.25_amd64.deb ...
Unpacking apache2 (2.4.52-1ubuntu4.25) ...
Selecting previously unselected package openssl.
Preparing to unpack .../31-openssl_3.0.2-0ubuntu1.30_amd64.deb ...
Unpacking openssl (3.0.2-0ubuntu1.30) ...
Selecting previously unselected package ca-certificates.
Preparing to unpack .../32-ca-certificates_20260816ubuntu0.22.04.1_all.deb ...
Unpacking ca-certificates (20260816ubuntu0.22.04.1) ...
Selecting previously unselected package netbase.
Preparing to unpack .../33-netbase_6.3_all.deb ...
Unpacking netbase (6.3) ...
Selecting previously unselected package libmagic-mgc.
Preparing to unpack .../34-libmagic-mgc_1%3a5.41-3ubuntu0.1_amd64.deb ...
Unpacking libmagic-mgc (1:5.41-3ubuntu0.1) ...
Selecting previously unselected package libmagic1:amd64.
Preparing to unpack .../35-libmagic1_1%3a5.41-3ubuntu0.1_amd64.deb ...
Unpacking libmagic1:amd64 (1:5.41-3ubuntu0.1) ...
Selecting previously unselected package file.
Preparing to unpack .../36-file_1%3a5.41-3ubuntu0.1_amd64.deb ...
Unpacking file (1:5.41-3ubuntu0.1) ...
Selecting previously unselected package publicsuffix.
Preparing to unpack .../37-publicsuffix_20211207.1025-1_all.deb ...
Unpacking publicsuffix (20211207.1025-1) ...
Selecting previously unselected package xz-utils.
Preparing to unpack .../38-xz-utils_5.2.5-2ubuntu1.2_amd64.deb ...
Unpacking xz-utils (5.2.5-2ubuntu1.2) ...
Selecting previously unselected package bzip2.
Preparing to unpack .../39-bzip2_1.0.8-5ubuntu0.1_amd64.deb ...
Unpacking bzip2 (1.0.8-5ubuntu0.1) ...
Selecting previously unselected package libldap-common.
Preparing to unpack .../40-libldap-common_2.5.20+dfsg-0ubuntu0.22.04.1_all.deb ...
Unpacking libldap-common (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Selecting previously unselected package libsasl2-modules:amd64.
Preparing to unpack .../41-libsasl2-modules_2.1.27+dfsg2-3ubuntu1.2_amd64.deb ...
Unpacking libsasl2-modules:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Selecting previously unselected package ssl-cert.
Preparing to unpack .../42-ssl-cert_1.1.2_all.deb ...
Unpacking ssl-cert (1.1.2) ...
Setting up libexpat1:amd64 (2.4.7-1ubuntu0.9) ...
Setting up media-types (7.0.0) ...
Setting up libpsl5:amd64 (0.21.0-1.2build2) ...
Setting up libmagic-mgc (1:5.41-3ubuntu0.1) ...
Setting up libbrotli1:amd64 (1.0.9-2ubuntu0.1) ...
Setting up libsqlite3-0:amd64 (3.37.2-2ubuntu0.8) ...
Setting up libsasl2-modules:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up libnghttp2-14:amd64 (1.43.0-1ubuntu0.4) ...
Setting up libmagic1:amd64 (1:5.41-3ubuntu0.1) ...
Setting up libapr1:amd64 (1.7.0-8ubuntu0.22.04.2) ...
Setting up file (1:5.41-3ubuntu0.1) ...
Setting up perl-modules-5.34 (5.34.0-3ubuntu1.9) ...
Setting up bzip2 (1.0.8-5ubuntu0.1) ...
Setting up libldap-common (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Setting up libjansson4:amd64 (2.13.1-1.1build3) ...
Setting up libsasl2-modules-db:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up librtmp1:amd64 (2.4+20151223.gitfa8646d.1-2build4) ...
Setting up xz-utils (5.2.5-2ubuntu1.2) ...
update-alternatives: using /usr/bin/xz to provide /usr/bin/lzma (lzma) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/lzma.1.gz because associated file /usr/share/man/man1/xz.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/unlzma.1.gz because associated file /usr/share/man/man1/unxz.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzcat.1.gz because associated file /usr/share/man/man1/xzcat.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzmore.1.gz because associated file /usr/share/man/man1/xzmore.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzless.1.gz because associated file /usr/share/man/man1/xzless.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzdiff.1.gz because associated file /usr/share/man/man1/xzdiff.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzcmp.1.gz because associated file /usr/share/man/man1/xzcmp.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzgrep.1.gz because associated file /usr/share/man/man1/xzgrep.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzegrep.1.gz because associated file /usr/share/man/man1/xzegrep.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzfgrep.1.gz because associated file /usr/share/man/man1/xzfgrep.1.gz (of link group lzma) doesn't exist
Setting up libsasl2-2:amd64 (2.1.27+dfsg2-3ubuntu1.2) ...
Setting up libssh-4:amd64 (0.9.6-2ubuntu0.22.04.8) ...
Setting up liblua5.3-0:amd64 (5.3.6-1build1) ...
Setting up netbase (6.3) ...
Setting up apache2-data (2.4.52-1ubuntu4.25) ...
Setting up openssl (3.0.2-0ubuntu1.30) ...
Setting up publicsuffix (20211207.1025-1) ...
Setting up libgdbm6:amd64 (1.23-1) ...
Setting up libicu70:amd64 (70.1-2) ...
Setting up libaprutil1:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Setting up libaprutil1-dbd-sqlite3:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Setting up libldap-2.5-0:amd64 (2.5.20+dfsg-0ubuntu0.22.04.1) ...
Setting up ca-certificates (20260816ubuntu0.22.04.1) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 78.)
debconf: falling back to frontend: Readline
Updating certificates in /etc/ssl/certs...
120 added, 0 removed; done.
Setting up ssl-cert (1.1.2) ...
debconf: unable to initialize frontend: Dialog
debconf: (No usable dialog-like program is installed, so the dialog based frontend cannot be used. at /usr/share/perl5/Debconf/FrontEnd/Dialog.pm line 78.)
debconf: falling back to frontend: Readline
Setting up libgdbm-compat4:amd64 (1.23-1) ...
Setting up libcurl4:amd64 (7.81.0-1ubuntu1.30) ...
Setting up libxml2:amd64 (2.9.13+dfsg-1ubuntu0.14) ...
Setting up apache2-utils (2.4.52-1ubuntu4.25) ...
Setting up libperl5.34:amd64 (5.34.0-3ubuntu1.9) ...
Setting up libaprutil1-ldap:amd64 (1.6.1-5ubuntu4.22.04.3) ...
Setting up perl (5.34.0-3ubuntu1.9) ...
Setting up mailcap (3.70+nmu1ubuntu1.22.04.1) ...
Setting up mime-support (3.66) ...
Setting up apache2-bin (2.4.52-1ubuntu4.25) ...
Setting up apache2 (2.4.52-1ubuntu4.25) ...
Enabling module mpm_event.
Enabling module authz_core.
Enabling module authz_host.
Enabling module authn_core.
Enabling module auth_basic.
Enabling module access_compat.
Enabling module authn_file.
Enabling module authz_user.
Enabling module alias.
Enabling module dir.
Enabling module autoindex.
Enabling module env.
Enabling module mime.
Enabling module negotiation.
Enabling module setenvif.
Enabling module filter.
Enabling module deflate.
Enabling module status.
Enabling module reqtimeout.
Enabling conf charset.
Enabling conf localized-error-pages.
Enabling conf other-vhosts-access-log.
Enabling conf security.
Enabling conf serve-cgi-bin.
Enabling site 000-default.
invoke-rc.d: could not determine current runlevel
invoke-rc.d: policy-rc.d denied execution of start.
Processing triggers for libc-bin (2.35-0ubuntu3.15) ...
Processing triggers for ca-certificates (20260816ubuntu0.22.04.1) ...
Updating certificates in /etc/ssl/certs...
0 added, 0 removed; done.
Running hooks in /etc/ca-certificates/update.d...
done.
```

```
root@b21a80160938:/# service apache2 start
 * Starting Apache httpd web server apache2                             AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.17.0.2. Set the 'ServerName' directive globally to suppress this message
 *
```

```
root@b21a80160938:/# ping 172.17.0.3
PING 172.17.0.3 (172.17.0.3) 56(84) bytes of data.
64 bytes from 172.17.0.3: icmp_seq=1 ttl=64 time=0.849 ms
64 bytes from 172.17.0.3: icmp_seq=2 ttl=64 time=0.067 ms
64 bytes from 172.17.0.3: icmp_seq=3 ttl=64 time=0.134 ms
^C
--- 172.17.0.3 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2032ms
rtt min/avg/max/mdev = 0.067/0.350/0.849/0.353 ms
```

```
root@b21a80160938:/# ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.2  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 42:39:a5:60:0a:6f  txqueuelen 0  (Ethernet)
        RX packets 59933  bytes 86061715 (86.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 32461  bytes 2215889 (2.2 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

root@b21a80160938:/# exit
exit

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu2
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu1 bash
root@f6013e9a6956:/# ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.3  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 7e:ef:c0:71:e0:d3  txqueuelen 0  (Ethernet)
        RX packets 60997  bytes 87540885 (87.5 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 34119  bytes 2345591 (2.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

```

```
root@f6013e9a6956:/# apt update
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu jammy-security InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
```

```
root@f6013e9a6956:/# apt install apache2
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
apache2 is already the newest version (2.4.52-1ubuntu4.25).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
```

```
root@f6013e9a6956:/# service apache2 start
 * Starting Apache httpd web server apache2                              *
```

```
root@f6013e9a6956:/# ping 172.170.2
PING 172.170.2 (172.170.0.2) 56(84) bytes of data.

^C
--- 172.170.2 ping statistics ---
9 packets transmitted, 0 received, 100% packet loss, time 8169ms

root@f6013e9a6956:/# exit
exit

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu1
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS                                     NAMES
f6013e9a6956   ubuntu:22.04   "/bin/bash"   26 minutes ago   Up 26 minutes   0.0.0.0:8082->80/tcp, [::]:8082->80/tcp   ubuntu1
b21a80160938   ubuntu:22.04   "/bin/bash"   28 minutes ago   Up 28 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu2
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5>   > docker exec -it ubuntu1 bash
root@f6013e9a6956:/# ping 172.170.2
PING 172.170.2 (172.170.0.2) 56(84) bytes of data.
^C
--- 172.170.2 ping statistics ---
5 packets transmitted, 0 received, 100% packet loss, time 4079ms

root@f6013e9a6956:/# exit
exit

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu1
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu2 bash
root@b21a80160938:/# ping 172.17.0.3
PING 172.17.0.3 (172.17.0.3) 56(84) bytes of data.
64 bytes from 172.17.0.3: icmp_seq=1 ttl=64 time=0.591 ms
64 bytes from 172.17.0.3: icmp_seq=2 ttl=64 time=0.082 ms
64 bytes from 172.17.0.3: icmp_seq=3 ttl=64 time=0.078 ms
64 bytes from 172.17.0.3: icmp_seq=4 ttl=64 time=0.144 ms
^C
--- 172.17.0.3 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3060ms
rtt min/avg/max/mdev = 0.078/0.223/0.591/0.213 ms
root@b21a80160938:/# exit
exit

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu2
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu1 bash
root@f6013e9a6956:/# ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.3  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 7e:ef:c0:71:e0:d3  txqueuelen 0  (Ethernet)
        RX packets 61029  bytes 87545604 (87.5 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 34168  bytes 2353689 (2.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

```

```
root@f6013e9a6956:/# ping 172.17.0.2
PING 172.17.0.2 (172.17.0.2) 56(84) bytes of data.
64 bytes from 172.17.0.2: icmp_seq=1 ttl=64 time=0.247 ms
64 bytes from 172.17.0.2: icmp_seq=2 ttl=64 time=0.081 ms
64 bytes from 172.17.0.2: icmp_seq=3 ttl=64 time=0.098 ms
^C
--- 172.17.0.2 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2047ms
rtt min/avg/max/mdev = 0.081/0.142/0.247/0.074 ms
```

```
root@f6013e9a6956:/# EXPOSE 80
bash: EXPOSE: command not found
root@f6013e9a6956:/# expose --version
bash: expose: command not found
root@f6013e9a6956:/# service apache2 start
 * Starting Apache httpd web server apache2                                  *
root@f6013e9a6956:/# EXPOSE 80
bash: EXPOSE: command not found
root@f6013e9a6956:/# exit
exit

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu1
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -d ubuntu1
Unable to find image 'ubuntu1:latest' locally
docker: Error response from daemon: pull access denied for ubuntu1, repository does not exist or may require 'docker login'

Run 'docker run --help' for more information

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker run -d f6013e9a6956
Unable to find image 'f6013e9a6956:latest' locally
docker: Error response from daemon: pull access denied for f6013e9a6956, repository does not exist or may require 'docker login'

Run 'docker run --help' for more information

What's next:
    Debug this container error with Gordon → docker ai "help me fix this container error"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker ps
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS                                     NAMES
f6013e9a6956   ubuntu:22.04   "/bin/bash"   44 minutes ago   Up 44 minutes   0.0.0.0:8082->80/tcp, [::]:8082->80/tcp   ubuntu1
b21a80160938   ubuntu:22.04   "/bin/bash"   46 minutes ago   Up 46 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu2
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -d ubuntu1
docker: 'docker exec' requires at least 2 arguments

Usage:  docker exec [OPTIONS] CONTAINER COMMAND [ARG...]

See 'docker exec --help' for more information
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\sessiodocker exec -it ubuntu1 apt-get update
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu jammy-security InRelease
Reading package lists... Done

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu1
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu1 apt-get install -y apache2
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
apache2 is already the newest version (2.4.52-1ubuntu4.25).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu1
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu1 service apache2 start
 * Starting Apache httpd web server apache2                              *

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu1
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu2 apt-get update
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
Hit:3 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu jammy-security InRelease
Reading package lists... Done

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu2
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu2 apt-get install -y apache2
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
apache2 is already the newest version (2.4.52-1ubuntu4.25).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu2
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -it ubuntu2 service apache2 start
 * Starting Apache httpd web server apache2                              *

What's next:
    Try Docker Debug for seamless, persistent debugging tools in any container or image → docker debug ubuntu2
    Learn more at https://docs.docker.com/go/debug-cli/
```

```
PS C:\devel\> docker psM511_Network_Systems_Automation\myPracticeCourseWork\
CONTAINER ID   IMAGE          COMMAND       CREATED          STATUS          PORTS                                     NAMES
f6013e9a6956   ubuntu:22.04   "/bin/bash"   48 minutes ago   Up 48 minutes   0.0.0.0:8082->80/tcp, [::]:8082->80/tcp   ubuntu1
b21a80160938   ubuntu:22.04   "/bin/bash"   51 minutes ago   Up 51 minutes   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   ubuntu2
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> docker exec -d ubuntu1
docker: 'docker exec' requires at least 2 arguments

Usage:  docker exec [OPTIONS] CONTAINER COMMAND [ARG...]

See 'docker exec --help' for more information
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> ipconfig

Windows IP Configuration


Unknown adapter McAfee VPN:

   Media State . . . . . . . . . . . : Media disconnected
   Connection-specific DNS Suffix  . :

Unknown adapter McAfee_VPN:

   Connection-specific DNS Suffix  . :
   Link-local IPv6 Address . . . . . : fe80::a3d7:df1c:6dc7:d4ae%17
   IPv4 Address. . . . . . . . . . . : 10.0.4.28
   Subnet Mask . . . . . . . . . . . : 255.255.255.255
   Default Gateway . . . . . . . . . :

Ethernet adapter Ethernet 2:

   Connection-specific DNS Suffix  . :
   Link-local IPv6 Address . . . . . : fe80::8d18:12e6:4bb9:4cdb%11
   IPv4 Address. . . . . . . . . . . : 192.168.56.1
   Subnet Mask . . . . . . . . . . . : 255.255.255.0
   Default Gateway . . . . . . . . . :

Wireless LAN adapter Local Area Connection* 3:

   Media State . . . . . . . . . . . : Media disconnected
   Connection-specific DNS Suffix  . :

Wireless LAN adapter Local Area Connection* 4:

   Media State . . . . . . . . . . . : Media disconnected
   Connection-specific DNS Suffix  . :

Wireless LAN adapter Wi-Fi:

   Connection-specific DNS Suffix  . :
   Link-local IPv6 Address . . . . . : fe80::b3c0:fd27:f64c:5741%10
   IPv4 Address. . . . . . . . . . . : 172.16.2.180
   Subnet Mask . . . . . . . . . . . : 255.255.252.0
   Default Gateway . . . . . . . . . : 172.16.0.1

Ethernet adapter Bluetooth Network Connection:

   Media State . . . . . . . . . . . : Media disconnected
   Connection-specific DNS Suffix  . :

Ethernet adapter vEthernet (Default Switch):

   Connection-specific DNS Suffix  . :
   Link-local IPv6 Address . . . . . : fe80::3c50:6534:21c:92e6%28
   IPv4 Address. . . . . . . . . . . : 172.18.224.1
   Subnet Mask . . . . . . . . . . . : 255.255.240.0
   Default Gateway . . . . . . . . . :

Ethernet adapter vEthernet (WSL (Hyper-V firewall)):

   Connection-specific DNS Suffix  . :
   Link-local IPv6 Address . . . . . : fe80::16b9:bf74:6235:f5ca%74
   IPv4 Address. . . . . . . . . . . : 172.19.32.1
   Subnet Mask . . . . . . . . . . . : 255.255.240.0
   Default Gateway . . . . . . . . . :
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5> cd "C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache"
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker build -t my-apache .
[+] Building 32.3s (6/6) FINISHED                      docker:desktop-linux
 => [internal] load build definition from Dockerfile                   0.1s
 => => transferring dockerfile: 344B                                   0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.04        0.1s
 => [internal] load .dockerignore                                      0.0s
 => => transferring context: 2B                                        0.0s
 => [1/2] FROM docker.io/library/ubuntu:22.04@sha256:e0f80c829509ef4d  0.7s
 => => resolve docker.io/library/ubuntu:22.04@sha256:e0f80c829509ef4d  0.0s
 => => extracting sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915  0.7s
 => [2/2] RUN apt-get update && apt-get install -y apache2            22.6s
 => exporting to image                                                 8.1s
 => => exporting layers                                                6.3s
 => => exporting manifest sha256:2f22cc55f4b19f8ed32211a99cd122331296  0.1s
 => => exporting config sha256:03ffca05ad6b0ca56966c03ce2cfcb9801e12f  0.0s
 => => exporting attestation manifest sha256:580747451fe3d4a06f1ac103  0.2s
 => => exporting manifest list sha256:4f9c39de14e63771d8a9dc11e7636a9  0.0s
 => => naming to docker.io/library/my-apache:latest                    0.0s
 => => unpacking to docker.io/library/my-apache:latest                 1.3s

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/t4bbc0dty34b5700yrcttzszt
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache>  docker run -d -p 8081:80 --name apache-1 my-apache
fc33bd13be5777087a21c2a8169da5a0303741ff38aa83b3ed44713ef6360ea0
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker ps
CONTAINER ID   IMAGE       COMMAND                  CREATED         STATUS         PORTS                                     NAMES
fc33bd13be57   my-apache   "apachectl -D FOREGR…"   7 seconds ago   Up 6 seconds   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   apache-1
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker run -d -p 8082:80 --name apache-2 my-apache
d7d10da91d56079eb9721c1b16f2230d992501d896baffdad5a3a8af245de26f
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache>                               > docker ps
CONTAINER ID   IMAGE       COMMAND                  CREATED              STATUS              PORTS                                     NAMES
d7d10da91d56   my-apache   "apachectl -D FOREGR…"   About a minute ago   Up About a minute   0.0.0.0:8082->80/tcp, [::]:8082->80/tcp   apache-2
fc33bd13be57   my-apache   "apachectl -D FOREGR…"   2 minutes ago        Up 2 minutes        0.0.0.0:8081->80/tcp, [::]:8081->80/tcp   apache-1
```

```
PS C:\devel\gitrepos\COM511_Netwo>          Automation\myPracticeCourseWork\
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker rm fc33bd13be57
Error response from daemon: cannot remove container "fc33bd13be57": container is running: stop the container before removing or force remove
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker stop fc33bd13be57
fc33bd13be57
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker rm fc33bd13be57
fc33bd13be57
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker stop fc33bd13be57
Error response from daemon: No such container: fc33bd13be57
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker rm fc33bd13be57
Error response from daemon: No such container: fc33bd13be57
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker ps
CONTAINER ID   IMAGE       COMMAND                  CREATED         STATUS         PORTS                                     NAMES
d7d10da91d56   my-apache   "apachectl -D FOREGR…"   3 minutes ago   Up 3 minutes   0.0.0.0:8082->80/tcp, [::]:8082->80/tcp   apache-2
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker stop d7d10da91d56
d7d10da91d56
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker rm d7d10da91d56
d7d10da91d56
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session5\vagrant-examples\example5_1\docker-examples\docker-apache> docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```
