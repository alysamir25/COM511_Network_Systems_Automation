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
