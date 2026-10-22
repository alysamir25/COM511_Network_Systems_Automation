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
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\client> vagrant up
Bringing machine 'pxe_client' up with 'virtualbox' provider...
==> pxe_client: Checking if box 'bento/rockylinux-9.6' version '202510.26.0' is up to date...
==> pxe_client: Clearing any previously set forwarded ports...
==> pxe_client: Fixed port collision for 22 => 2222. Now on port 2200.
==> pxe_client: Clearing any previously set network interfaces...
==> pxe_client: Preparing network interfaces based on configuration...
    pxe_client: Adapter 1: nat
==> pxe_client: Forwarding ports...
    pxe_client: 22 (guest) => 2200 (host) (adapter 1)
==> pxe_client: Running 'pre-boot' VM customizations...
==> pxe_client: Booting VM...
==> pxe_client: Waiting for machine to boot. This may take a few minutes...
    pxe_client: SSH address: 127.0.0.1:22
    pxe_client: SSH username: vagrant
    pxe_client: SSH auth method: private key
Timed out while waiting for the machine to boot. This means that
Vagrant was unable to communicate with the guest machine within
the configured ("config.vm.boot_timeout" value) time period.

If you look above, you should be able to see the error(s) that
Vagrant had when attempting to connect to the machine. These errors
are usually good hints as to what may be wrong.

If you're using a custom box, make sure that networking is properly
working and you're able to connect to the machine. It is a common
problem that networking isn't setup properly in these boxes.
Verify that authentication configurations are also setup properly,
as well.

If the box appears to be booting properly, you may want to increase
the timeout ("config.vm.boot_timeout") value.
```

---

# Troubleshooting and Successful Ubuntu Client Boot

## 1. Observation:
Vagrant's output reported Adapter 1: nat even though the client Vagrantfile requests an internal network. Later, the Ubuntu client successfully received its expected PXE network address. The discrepancy between the Vagrantfile and VirtualBox's reported configuration should be investigated separately if repeatable network configuration is required.
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\client> vagrant up
Bringing machine 'pxe_client' up with 'virtualbox' provider...
==> pxe_client: Checking if box 'bento/rockylinux-9.6' version '202510.26.0' is up to date...
==> pxe_client: Fixed port collision for 22 => 2222. Now on port 2200.
==> pxe_client: Clearing any previously set network interfaces...
==> pxe_client: Preparing network interfaces based on configuration...
    pxe_client: Adapter 1: nat
==> pxe_client: Forwarding ports...
    pxe_client: 22 (guest) => 2200 (host) (adapter 1)
There was an error while executing `VBoxManage`, a CLI used by Vagrant
for controlling VirtualBox. The command and stderr is shown below.

Command: ["modifyvm", "e609ab21-f6ef-4736-b38e-f41ec0c12179", "--natpf1", "ssh,tcp,127.0.0.1,2200,,22"]

Stderr: VBoxManage.exe: error: A NAT rule of this name already exists
VBoxManage.exe: error: Details: code E_INVALIDARG (0x80070057), component NATEngineWrap, interface INATEngine, callee IUnknown
VBoxManage.exe: error: Context: "AddRedirect(Bstr(strName).raw(), proto, Bstr(strHostIp).raw(), RTStrToUInt16(strHostPort), Bstr(strGuestIp).raw(), RTStrToUInt16(strGuestPort))" at line 2255 of file VBoxManageModifyVM.cpp
```

## 2. PXE server provisioning
The server provisioning script installs and configures the components required for network boot.

### 2.1 Ubuntu installation files
The script downloads Ubuntu Server 24.04.5:
```
wget -nc -P /vagrant/www/sharedisos \
  https://releases.ubuntu.com/noble/ubuntu-24.04.5-live-server-amd64.iso
```
It mounts the ISO and copies the kernel and initial RAM disk into the TFTP directory:
```
# mount the ISO file to a temporary directory to access its contents
mkdir -p /media/iso
mount -o loop,ro /vagrant/www/sharedisos/ubuntu-24.04.5-live-server-amd64.iso /media/iso

echo "copying the initrd and vmlinuz files from the ISO to /srv/tftp/ubuntu"
echo "Creating /srv/tftp/ubuntu directory"
mkdir -p /srv/tftp/ubuntu
cp /media/iso/casper/initrd  /srv/tftp/ubuntu/
cp /media/iso/casper/vmlinuz /srv/tftp/ubuntu/
echo "copy tftp files complete"

if ! [ -d "/srv/nfs/pxe/ubuntu" ]; then
    echo "copying the linux file system from the ISO to the nfs server "
    mkdir -p /srv/nfs/pxe/ubuntu
    cp -rv /media/iso/ /srv/nfs/pxe/ubuntu
    echo "copy nfs files complete"
else
    echo "/srv/tftp/ubuntu directory already exists - not copying ISO files to nfs server"
fi 
```
The script also copies the ISO contents into the NFS directory:
``
    mkdir -p /srv/nfs/pxe/ubuntu
    cp -rv /media/iso/ /srv/nfs/pxe/ubuntu
``

### 2.2 Services configured by the script
The server uses these services:
`tftpd-hpa`: serves PXE boot files.
`nfs-kernel-server`: provides the network filesystem used by the lab.
`nginx`: serves web resources for the installation configuration.
`isc-dhcp-server`: assigns addresses and advertises the PXE server and boot filename.

The script also copies PXE resources into `/srv/tftp` and restarts `TFTPD` within TFTPC configuration:
```
cp /vagrant/config/resources/tftpd-hpa /etc/default/tftpd-hpa

cp -R /vagrant/config/resources/pxelinux.cfg /srv/tftp
cp -R /vagrant/config/resources/syslinux /srv/tftp
cp /vagrant/config/resources/pxelinux.0 /srv/tftp

systemctl restart tftpd-hpa
```
The source file `config/resources/tftpd-hpa` is important because provisioning overwrites the server's TFTP configuration with this file. Correcting only the live server configuration does not necessarily fix the source file.

## 3. Blocker 1: PXE client could not download pxelinux.0
### 3.1 Initial symptoms
The VirtualBox client console showed:

<img width="772" height="460" alt="Screenshot 2026-10-22 084140" src="https://github.com/user-attachments/assets/e23fa1ed-4091-44ce-87f6-56b84b2c381c" />

The DHCP stage was working because the client received:
* IP address: 192.168.0.10
* PXE server: 192.168.0.254
* Boot filename: pxelinux.0

The failure happened when iPXE attempted to retrieve the boot file using TFTP.
Vagrant also reported that it could not connect to the guest through SSH:
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\client> vagrant up
Bringing machine 'pxe_client' up with 'virtualbox' provider...
==> pxe_client: Importing base box 'bento/rockylinux-9.6'...
==> pxe_client: Matching MAC address for NAT networking...
==> pxe_client: Checking if box 'bento/rockylinux-9.6' version '202510.26.0' is up to date...
==> pxe_client: Setting the name of the VM: client_pxe_client_1792654823960_61833
==> pxe_client: Fixed port collision for 22 => 2222. Now on port 2200.
==> pxe_client: Clearing any previously set network interfaces...
==> pxe_client: Preparing network interfaces based on configuration...
    pxe_client: Adapter 1: nat
==> pxe_client: Forwarding ports...
    pxe_client: 22 (guest) => 2200 (host) (adapter 1)
==> pxe_client: Running 'pre-boot' VM customizations...
==> pxe_client: Booting VM...
==> pxe_client: Waiting for machine to boot. This may take a few minutes...
    pxe_client: SSH address: 127.0.0.1:22
    pxe_client: SSH username: vagrant
    pxe_client: SSH auth method: private key
Timed out while waiting for the machine to boot. This means that
Vagrant was unable to communicate with the guest machine within
the configured ("config.vm.boot_timeout" value) time period.

If you look above, you should be able to see the error(s) that
Vagrant had when attempting to connect to the machine. These errors
are usually good hints as to what may be wrong.

If you're using a custom box, make sure that networking is properly
working and you're able to connect to the machine. It is a common
problem that networking isn't setup properly in these boxes.
Verify that authentication configurations are also setup properly,
as well.

If the box appears to be booting properly, you may want to increase
the timeout ("config.vm.boot_timeout") value.
```
At this stage, the SSH timeout was expected because the client had not reached a normally booted operating system.

### 3.2 Inspecting the server's network interfaces
On the Ubuntu PXE server:
```
vagrant@pxe-server:~$ ip addr
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:f8:c2:eb brd ff:ff:ff:ff:ff:ff
    altname enp0s3
    inet 10.0.2.15/24 metric 100 brd 10.0.2.255 scope global dynamic eth0
       valid_lft 51619sec preferred_lft 51619sec
    inet6 fd17:625c:f037:2:a00:27ff:fef8:c2eb/64 scope global dynamic mngtmpaddr noprefixroute
       valid_lft 86278sec preferred_lft 14278sec
    inet6 fe80::a00:27ff:fef8:c2eb/64 scope link
       valid_lft forever preferred_lft forever
3: eth1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:1f:c1:fb brd ff:ff:ff:ff:ff:ff
    altname enp0s8
    inet 192.168.0.254/24 brd 192.168.0.255 scope global eth1
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe1f:c1fb/64 scope link
       valid_lft forever preferred_lft forever
```
The server therefore had a NAT interface `eth0` and an internal PXE interface `eth1`.

### 3.3 Checking DHCP
The DHCP service was checked with:
```
vagrant@pxe-server:~$ sudo systemctl status isc-dhcp-server --no-pager
● isc-dhcp-server.service - ISC DHCP IPv4 server
     Loaded: loaded (/usr/lib/systemd/system/isc-dhcp-server.service; enabled; preset: enabled)
     Active: active (running) since Wed 2026-10-21 22:17:10 UTC; 12h ago
       Docs: man:dhcpd(8)
   Main PID: 3979 (dhcpd)
      Tasks: 1 (limit: 2264)
     Memory: 3.7M (peak: 4.0M)
        CPU: 240ms
     CGroup: /system.slice/isc-dhcp-server.service
             └─3979 dhcpd -user dhcpd -group dhcpd -f -4 -pf /run/dhcp-serv…

Oct 22 08:42:06 pxe-server dhcpd[3979]: reuse_lease: lease age 120 (secs….10
Oct 22 08:42:06 pxe-server dhcpd[3979]: DHCPREQUEST for 192.168.0.10 (19…th1
Oct 22 08:42:06 pxe-server dhcpd[3979]: DHCPACK on 192.168.0.10 to 08:00…th1
Oct 22 08:43:16 pxe-server dhcpd[3979]: DHCPDISCOVER from 08:00:27:6f:16…th1
Oct 22 08:43:16 pxe-server dhcpd[3979]: DHCPOFFER on 192.168.0.10 to 08:…th1
Oct 22 08:43:17 pxe-server dhcpd[3979]: DHCPDISCOVER from 08:00:27:6f:16…th1
Oct 22 08:43:17 pxe-server dhcpd[3979]: DHCPOFFER on 192.168.0.10 to 08:…th1
Oct 22 08:43:19 pxe-server dhcpd[3979]: DHCPREQUEST for 192.168.0.10 (19…th1
Oct 22 08:43:19 pxe-server dhcpd[3979]: Wrote 1 leases to leases file.
Oct 22 08:43:19 pxe-server dhcpd[3979]: DHCPACK on 192.168.0.10 to 08:00…th1
Hint: Some lines were ellipsized, use -l to show in full.
```
The DHCP service was active and running.
The interface configuration was:
```
vagrant@pxe-server:~$ cat /etc/default/isc-dhcp-server
# Defaults for isc-dhcp-server initscript
# sourced by /etc/init.d/isc-dhcp-server
# installed at /etc/default/isc-dhcp-server by the maintainer scripts

#
# This is a POSIX shell fragment
#

# Path to dhcpd's config file (default: /etc/dhcp/dhcpd.conf).
#DHCPD_CONF=/etc/dhcp/dhcpd.conf

# Path to dhcpd's PID file (default: /var/run/dhcpd.pid).
#DHCPD_PID=/var/run/dhcpd.pid

# Additional options to start dhcpd with.
#       Don't use options -cf or -pf here; use DHCPD_CONF/ DHCPD_PID instead
#OPTIONS=""

# On what interfaces should the DHCP server (dhcpd) serve DHCP requests?
#       Separate multiple interfaces with spaces, e.g. "eth0 eth1".
INTERFACES="eth1"
```
Relevant output:
``
INTERFACES="eth1"
``
The DHCP configuration was:
```
vagrant@pxe-server:~$ cat /etc/dhcp/dhcpd.conf
ddns-update-style none;

# option domain-name "example.org";

default-lease-time 600;
max-lease-time 7200;
authoritative;
log-facility local7;

subnet 192.168.0.0 netmask 255.255.255.0 {
  range 192.168.0.10 192.168.0.20;
  option domain-name-servers 192.168.0.254, 8.8.8.8;
  next-server 192.168.0.254;
  filename "pxelinux.0";
}
```
This confirmed that DHCP was configured to advertise the correct TFTP server and boot filename.

Checking if the TFTP is running, and it is failing
```
vagrant@pxe-server:~$ sudo systemctl status tftpd-hpa
× tftpd-hpa.service - LSB: HPA's tftp server
     Loaded: loaded (/etc/init.d/tftpd-hpa; generated)
     Active: failed (Result: exit-code) since Wed 2026-10-21 22:16:33 UTC; >
   Duration: 8.185s
       Docs: man:systemd-sysv-generator(8)
      Tasks: 1 (limit: 2264)
     Memory: 89.8M (peak: 90.3M)
        CPU: 1min 5.473s
     CGroup: /system.slice/tftpd-hpa.service
             └─2351 /usr/sbin/in.tftpd --listen --user tftp --address :69 ->

Oct 21 22:16:33 pxe-server systemd[1]: Starting tftpd-hpa.service - LSB: HP>
Oct 21 22:16:33 pxe-server tftpd-hpa[2399]: [62B blob data]
Oct 21 22:16:33 pxe-server systemd[1]: tftpd-hpa.service: Control process e>
Oct 21 22:16:33 pxe-server systemd[1]: tftpd-hpa.service: Failed with resul>
Oct 21 22:16:33 pxe-server systemd[1]: tftpd-hpa.service: Unit process 2351>
Oct 21 22:16:33 pxe-server systemd[1]: Failed to start tftpd-hpa.service - >
Oct 22 05:36:52 pxe-server in.tftpd[4268]: tftp: client does not accept opt>
lines 1-18/18 (END)
```

### 3.4 Checking the TFTP configuration
The configuration was inspected using:
```
vagrant@pxe-server:~$ sudo cat /etc/default/tftpd-hpa
#TFTP_USERNAME="tftp"
#TFTP_DIRECTORY="/tftpboot"
#TFTP_ADDRESS="192.168.0.254:69"
#TFTP_OPTIONS="--secure"

# /etc/default/tftpd-hpa

TFTP_USERNAME="tftp"
TFTP_DIRECTORY="/srv/tftp"
TFTP_ADDRESS="192.168.0.254:69"
TFTP_OPTIONS="--secure"
```
The intended settings were:
```
TFTP_USERNAME="tftp"
TFTP_DIRECTORY="/srv/tftp"
TFTP_ADDRESS="192.168.0.254:69"
TFTP_OPTIONS="--secure"
```

The boot files existed:
```
vagrant@pxe-server:~$ ls -R /srv/tftp
/srv/tftp:
pxelinux.0  pxelinux.cfg  syslinux  ubuntu

/srv/tftp/pxelinux.cfg:
default

/srv/tftp/syslinux:
background.png  graphics.conf  libgpl.c32   libutil.c32
chain.c32       ldlinux.c32    liblua.c32   vesamenu.c32
fr.kbd          libcom32.c32   libmenu.c32

/srv/tftp/ubuntu:
initrd  vmlinuz
```

The kernel and initial RAM disk were in:
``
/srv/tftp/ubuntu/initrd
/srv/tftp/ubuntu/vmlinuz
``
The PXE configuration file was:
``
/srv/tftp/pxelinux.cfg/default
``
The files existed, but the TFTP service was not starting correctly after its configuration was reloaded.

### 3.5 Finding the root cause
The configuration file was inspected with:
```
vagrant@pxe-server:~$ sudo file /etc/default/tftpd-hpa
/etc/default/tftpd-hpa: ASCII text, with CRLF line terminators
```
The `CRLF` line endings are the Windows-style line endings. The file was not being parsed correctly by the Linux startup script.

The startup script was tested directly:
```
vagrant@pxe-server:~$ sudo sh -x /etc/init.d/tftpd-hpa start 2>&1
+ PATH=/sbin:/bin:/usr/sbin:/usr/bin
+ DAEMON=/usr/sbin/in.tftpd
+ test -x /usr/sbin/in.tftpd
+ NAME=in.tftpd
+ DESC=HPA's tftpd
+ PIDFILE=/var/run/tftpd-hpa.pid
+ DEFAULTS=/etc/default/tftpd-hpa
+ set -e
+ [ -r /etc/default/tftpd-hpa ]
+ . /etc/default/tftpd-hpa
+
: not found/tftpd-hpa: 5: /etc/default/tftpd-hpa:
```
The important error was:
```
+ [ -r /etc/default/tftpd-hpa ]
+ . /etc/default/tftpd-hpa
:
: not found/tftpd-hpa: 5: /etc/default/tftpd-hpa:
```
This established that the line endings in the TFTP configuration file were preventing it from being loaded correctly.

An additional complication was that an old TFTP process had remained running even when the systemd service reported a failure. The old process was stopped with:
``
sudo pkill in.tftpd
``
After that, the service failed to start until the configuration file was corrected.

### 3.6 Solution: convert the configuration file to Unix line endings
On the PXE server, run:
```
vagrant@pxe-server:~$ sudo sed -i 's/\r$//' /etc/default/tftpd-hpa
```
This removes a trailing carriage return from each line.

Verify the result:
```
vagrant@pxe-server:~$ sudo file /etc/default/tftpd-hpa
/etc/default/tftpd-hpa: ASCII text
```
Restart the TFTP service:
```
vagrant@pxe-server:~$ sudo systemctl restart tftpd-hpa
```
Check its status:
```
vagrant@pxe-server:~$ sudo systemctl status tftpd-hpa --no-pager -l
● tftpd-hpa.service - LSB: HPA's tftp server
     Loaded: loaded (/etc/init.d/tftpd-hpa; generated)
     Active: active (running) since Thu 2026-10-22 08:04:09 UTC; 4s ago
       Docs: man:systemd-sysv-generator(8)
    Process: 4643 ExecStart=/etc/init.d/tftpd-hpa start (code=exited, status=0/SUCCESS)
      Tasks: 1 (limit: 2264)
     Memory: 248.0K (peak: 1.5M)
        CPU: 174ms
     CGroup: /system.slice/tftpd-hpa.service
             └─4651 /usr/sbin/in.tftpd --listen --user tftp --address 192.168.0.254:69 --secure /srv/tftp

Oct 22 08:04:09 pxe-server systemd[1]: Starting tftpd-hpa.service - LSB: HPA's tftp server...
Oct 22 08:04:09 pxe-server tftpd-hpa[4643]:  * Starting HPA's tftpd in.tftpd
Oct 22 08:04:09 pxe-server tftpd-hpa[4643]:    ...done.
Oct 22 08:04:09 pxe-server systemd[1]: Started tftpd-hpa.service - LSB: HPA's tftp server.
```
Successful output included:
```
● tftpd-hpa.service - LSB: HPA's tftp server
     Loaded: loaded (/etc/init.d/tftpd-hpa; generated)
     Active: active (running) since Thu 2026-10-22 08:04:09 UTC; 4s ago
```
The running process was:
```
  CGroup: /system.slice/tftpd-hpa.service
             └─4651 /usr/sbin/in.tftpd --listen --user tftp --address 192.168.0.254:69 --secure /srv/tftp
```
Verify that it is listening on UDP port 69:
```
vagrant@pxe-server:~$ sudo ss -lunp | grep ':69'
UNCONN 0      0       192.168.0.254:69         0.0.0.0:*    users:(("in.tftpd",pid=4651,fd=4))
```

Result: The TFTP service was active and listening on the correct server address and port.

### 3.7 Retesting PXE boot
From Windows PowerShell, in the client project directory:
``
vagrant up
``
After the TFTP fix, the client successfully downloaded the PXE boot files and started the Ubuntu installation.
<img width="795" height="715" alt="Screenshot 2026-10-22 090918" src="https://github.com/user-attachments/assets/1b66fa7e-8649-447a-8939-9d40c204998a" />
<img width="1026" height="842" alt="Screenshot 2026-10-22 092109" src="https://github.com/user-attachments/assets/88aeae4e-192b-489b-aa92-ecac88d5b942" />
<img width="1022" height="867" alt="Screenshot 2026-10-22 092239" src="https://github.com/user-attachments/assets/9454ac9f-3f15-451f-bdac-2a3da686328d" />
<img width="1022" height="870" alt="Screenshot 2026-10-22 092342" src="https://github.com/user-attachments/assets/af3e91c9-e23e-4c1f-b88e-d2423ed7d5ef" />
<img width="1020" height="875" alt="Screenshot 2026-10-22 092614" src="https://github.com/user-attachments/assets/c36720fe-953c-420e-a4bb-0eed0c1ea37a" />


## !!! Important follow-up: The live configuration was fixed, but the source file copied during provisioning was not yet confirmed to have been corrected:
``
config/resources/tftpd-hpa
``
That source file should also be converted to Unix line endings to prevent the issue from returning after reprovisioning. Was successfully converted from `Windows (CRLF)` to `Linux (LF)`.

## 4. Blocker 2: Ubuntu installation stopped and the VM powered off
### 4.1 What happened
The PXE client booted successfully and began installing Ubuntu. The installation progressed to approximately 90%, then the VM powered off unexpectedly.

This did not prove that the installation was complete or that the virtual disk was damaged.

Running `vagrant up` again produced a different error:
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\client> vagrant up
Bringing machine 'pxe_client' up with 'virtualbox' provider...
==> pxe_client: Checking if box 'bento/rockylinux-9.6' version '202510.26.0' is up to date...
==> pxe_client: Fixed port collision for 22 => 2222. Now on port 2200.
==> pxe_client: Clearing any previously set network interfaces...
==> pxe_client: Preparing network interfaces based on configuration...
    pxe_client: Adapter 1: nat
==> pxe_client: Forwarding ports...
    pxe_client: 22 (guest) => 2200 (host) (adapter 1)
There was an error while executing `VBoxManage`, a CLI used by Vagrant
for controlling VirtualBox. The command and stderr is shown below.

Command: ["modifyvm", "e609ab21-f6ef-4736-b38e-f41ec0c12179", "--natpf1", "ssh,tcp,127.0.0.1,2200,,22"]

Stderr: VBoxManage.exe: error: A NAT rule of this name already exists
VBoxManage.exe: error: Details: code E_INVALIDARG (0x80070057), component NATEngineWrap, interface INATEngine, callee IUnknown
VBoxManage.exe: error: Context: "AddRedirect(Bstr(strName).raw(), proto, Bstr(strHostIp).raw(), RTStrToUInt16(strHostPort), Bstr(strGuestIp).raw(), RTStrToUInt16(strGuestPort))" at line 2255 of file VBoxManageModifyVM.cpp
```

### 4.2 Checking the Vagrant VM state
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\client> vagrant status
Current machine states:

pxe_client                poweroff (virtualbox)

The VM is powered off. To restart the VM, simply run `vagrant up`
```

### 4.3 Locating VBoxManage
The command VBoxManage was not available directly in PowerShell:
``
VBoxManage showvminfo e609ab21-f6ef-4736-b38e-f41ec0c12179 --details
``
PowerShell returned:
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\client> VBoxManage showvminfo e609ab21-f6ef-4736-b38e-f41ec0c12179 --details
VBoxManage : The term 'VBoxManage' is not recognized as the name of a
cmdlet, function, script file, or operable program. Check the spelling of
the name, or if a path was included, verify that the path is correct and
try again.
At line:1 char:1
+ VBoxManage showvminfo e609ab21-f6ef-4736-b38e-f41ec0c12179 --details
+ ~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (VBoxManage:String) [], Comm
   andNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException
```
The full path was used instead:
```
& "$env:ProgramFiles\Oracle\VirtualBox\VBoxManage.exe" showvminfo e609ab21-f6ef-4736-b38e-f41ec0c12179 --details
```
This command worked.

### 4.4 Important findings from VirtualBox
The VM details included:
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\client> & "$env:ProgramFiles\Oracle\VirtualBox\VBoxManage.exe" showvminfo e609ab21-f6ef-4736-b38e-f41ec0c12179 --details
Name:                        client_pxe_client_1792656383227_44173
Encryption:                  disabled
Groups:                      /
Platform Architecture:       x86
Guest OS:                    Oracle Linux (64-bit)
UUID:                        e609ab21-f6ef-4736-b38e-f41ec0c12179
Config file:                 C:\Users\Admin\VirtualBox VMs\client_pxe_client_1792656383227_44173\client_pxe_client_1792656383227_44173.vbox
Snapshot folder:             C:\Users\Admin\VirtualBox VMs\client_pxe_client_1792656383227_44173\Snapshots
Log folder:                  C:\Users\Admin\VirtualBox VMs\client_pxe_client_1792656383227_44173\Logs
Hardware UUID:               e609ab21-f6ef-4736-b38e-f41ec0c12179
Memory size:                 10240MB
Page Fusion:                 disabled
VRAM size:                   128MB
CPU exec cap:                100%
CPUProfile:                  host
Chipset:                     ich9
Firmware:                    BIOS
Number of CPUs:              1
HPET:                        disabled
PAE:                         enabled
Long Mode:                   enabled
Triple Fault Reset:          disabled
APIC:                        enabled
X2APIC:                      enabled
Nested VT-x/AMD-V:           disabled
CPUID overrides:             None
Hardware Virtualization:     enabled
Nested Paging:               enabled
Large Pages:                 enabled
VT-x VPID:                   enabled
VT-x Unrestricted Exec.:     enabled
AMD-V Virt. Vmsave/Vmload:   enabled
CPUID Portability Level:     0
Boot menu mode:              message and menu
Boot Device 1:               Network
Boot Device 2:               Not Assigned
Boot Device 3:               Not Assigned
Boot Device 4:               Not Assigned
ACPI:                        enabled
IOAPIC:                      enabled
BIOS APIC mode:              APIC
Time offset:                 0ms
BIOS NVRAM File:             C:\Users\Admin\VirtualBox VMs\client_pxe_client_1792656383227_44173\client_pxe_client_1792656383227_44173.nvram
RTC:                         UTC
IOMMU:                       None
Paravirt. Provider:          Default
Effective Paravirt. Prov.:   KVM
State:                       powered off (since 2026-10-22T08:35:22.487000000)
Graphics Controller:         VBoxSVGA
Monitor count:               1
3D Acceleration:             disabled
Teleporter Enabled:          disabled
Teleporter Port:             0
Teleporter Address:
Teleporter Password:
Tracing Enabled:             disabled
Allow Tracing to Access VM:  disabled
Tracing Configuration:
Autostart Enabled:           disabled
Autostart Delay:             0
Default Frontend:
VM process priority:         default
Storage Controllers:
#0: 'IDE Controller', Type: PIIX4, Instance: 0, Ports: 2 (max 2), Bootable
#1: 'SATA Controller', Type: IntelAhci, Instance: 0, Ports: 14 (max 30), Bootable
  Port 0, Unit 0: UUID: 0e3120c4-18ab-4b89-8f18-4a47c70fea26
    Location: "C:\Users\Admin\VirtualBox VMs\client_pxe_client_1792656383227_44173\rockylinux-9.6-amd64-disk001.vmdk"
NIC 1:                       MAC: 0800276F16B4, Attachment: NAT, Cable connected: on, Trace: off (file: none), Type: 82540EM, Reported speed: 0 Mbps, Boot priority: 0, Promisc Policy: deny, Bandwidth group: none
NIC 1 Settings:
        MTU: 0, Socket (send: 64, receive: 64), TCP Window (send:64, receive: 64),
        LocalhostReachable: 1, ForwardBroadcast: 0, EnableTFTP: 0
NIC 1 Rule(0):   name = ssh, protocol = tcp, host ip = 127.0.0.1, host port = 2200, guest ip = , guest port = 22
NIC 2:                       disabled
NIC 3:                       disabled
NIC 4:                       disabled
NIC 5:                       disabled
NIC 6:                       disabled
NIC 7:                       disabled
NIC 8:                       disabled
NIC 9:                       disabled
NIC 10:                      disabled
NIC 11:                      disabled
NIC 12:                      disabled
NIC 13:                      disabled
NIC 14:                      disabled
NIC 15:                      disabled
NIC 16:                      disabled
NIC 17:                      disabled
NIC 18:                      disabled
NIC 19:                      disabled
NIC 20:                      disabled
NIC 21:                      disabled
NIC 22:                      disabled
NIC 23:                      disabled
NIC 24:                      disabled
NIC 25:                      disabled
NIC 26:                      disabled
NIC 27:                      disabled
NIC 28:                      disabled
NIC 29:                      disabled
NIC 30:                      disabled
NIC 31:                      disabled
NIC 32:                      disabled
NIC 33:                      disabled
NIC 34:                      disabled
NIC 35:                      disabled
NIC 36:                      disabled
Pointing Device:             PS/2 Mouse
Keyboard Device:             PS/2 Keyboard
UART 1:                      disabled
UART 2:                      disabled
UART 3:                      disabled
UART 4:                      disabled
LPT 1:                       disabled
LPT 2:                       disabled
Audio:                       disabled
Audio playback:              disabled
Audio capture:               disabled
Clipboard Mode:              disabled
Clipboard file transfers:    disabled
Drag and drop Mode:          disabled
VRDE:                        enabled (Address 127.0.0.1, Ports 5958, MultiConn: off, ReuseSingleConn: off, Authentication type: null)
Video redirection:           disabled
VRDE property               : TCP/Ports  = "5958"
VRDE property               : TCP/Address = "127.0.0.1"
VRDE property               : VideoChannel/Enabled = <not set>
VRDE property               : VideoChannel/Quality = <not set>
VRDE property               : VideoChannel/DownscaleProtection = <not set>
VRDE property               : Client/DisableDisplay = <not set>
VRDE property               : Client/DisableInput = <not set>
VRDE property               : Client/DisableAudio = <not set>
VRDE property               : Client/DisableUSB = <not set>
VRDE property               : Client/DisableClipboard = <not set>
VRDE property               : Client/DisableUpstreamAudio = <not set>
VRDE property               : Client/DisableRDPDR = <not set>
VRDE property               : H3DRedirect/Enabled = <not set>
VRDE property               : Security/Method = "TLS"
VRDE property               : Security/ServerCertificate = "/Users/coreyhemminger/VirtualBox VMs/rockylinux-9.6-amd64/VRDEAutoGeneratedCert.pem"
VRDE property               : Security/ServerPrivateKey = "/Users/coreyhemminger/VirtualBox VMs/rockylinux-9.6-amd64/VRDEAutoGeneratedPrivateKey.pem"
VRDE property               : Security/CACertificate = <not set>
VRDE property               : Audio/RateCorrectionMode = <not set>
VRDE property               : Audio/LogPath = <not set>
OHCI USB:                    disabled
EHCI USB:                    disabled
xHCI USB:                    disabled
USB Device Filters:          <none>
Bandwidth groups:            <none>
Shared folders:

Name: 'vagrant', Host path: '\\?\C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\client' (machine mapping), writable

Recording status:            stopped
Recording enabled:           no
Recording screens:           1
 Screen 0:
    Enabled:                 yes
    ID:                      0
    Record video:            yes
    Record audio:            no
    Destination:             File
    File:                    C:\Users\Admin\VirtualBox VMs\client_pxe_client_1792656383227_44173\client_pxe_client_1792656383227_44173-screen0.webm
    Options:                 ac_profile=med
    Video dimensions:        1024x768
    Video rate:              512kbps
    Video FPS:               25fps
* Guest:
Configured memory balloon:   0MB
```
The virtual disk was still attached:
``
Location: "C:\Users\Admin\VirtualBox VMs\client_pxe_client_1792656383227_44173\rockylinux-9.6-amd64-disk001.vmdk"
``
The boot order was:
``
Boot Device 1:               Network
Boot Device 2:               Not Assigned
Boot Device 3:               Not Assigned
Boot Device 4:               Not Assigned
``
The first network adapter was reported as NAT:
``
NIC 1: MAC: 0800276F16B4, Attachment: NAT, Cable connected: on
``
The duplicate SSH rule was confirmed:
``
NIC 1 Rule(0): name = ssh, protocol = tcp, host ip = 127.0.0.1,
host port = 2200, guest ip = , guest port = 22
``
This showed that the VM still existed and had a virtual disk, but it was configured to attempt network boot first and had a pre-existing SSH forwarding rule.

### 4.5 Solution: remove the duplicate SSH forwarding rule
``
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\client> & "$env:ProgramFiles\Oracle\VirtualBox\VBoxManage.exe" modifyvm e609ab21-f6ef-4736-b38e-f41ec0c12179 --natpf1 delete ssh
``
This removes the existing NAT forwarding rule named ssh. It does not delete the VM or its virtual disk.

Then run:
``
vagrant up
``
This time, Vagrant got past the duplicate-rule error and started the VM.
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\client> vagrant up
Bringing machine 'pxe_client' up with 'virtualbox' provider...
==> pxe_client: Checking if box 'bento/rockylinux-9.6' version '202510.26.0' is up to date...
==> pxe_client: Clearing any previously set forwarded ports...
==> pxe_client: Fixed port collision for 22 => 2222. Now on port 2200.
==> pxe_client: Clearing any previously set network interfaces...
==> pxe_client: Preparing network interfaces based on configuration...
    pxe_client: Adapter 1: nat
==> pxe_client: Forwarding ports...
    pxe_client: 22 (guest) => 2200 (host) (adapter 1)
==> pxe_client: Running 'pre-boot' VM customizations...
==> pxe_client: Booting VM...
==> pxe_client: Waiting for machine to boot. This may take a few minutes...
    pxe_client: SSH address: 127.0.0.1:22
    pxe_client: SSH username: vagrant
    pxe_client: SSH auth method: private key
Timed out while waiting for the machine to boot. This means that
Vagrant was unable to communicate with the guest machine within
the configured ("config.vm.boot_timeout" value) time period.

If you look above, you should be able to see the error(s) that
Vagrant had when attempting to connect to the machine. These errors
are usually good hints as to what may be wrong.

If you're using a custom box, make sure that networking is properly
working and you're able to connect to the machine. It is a common
problem that networking isn't setup properly in these boxes.
Verify that authentication configurations are also setup properly,
as well.

If the box appears to be booting properly, you may want to increase
the timeout ("config.vm.boot_timeout") value.
```

Result: The duplicate SSH forwarding rule was successfully removed, allowing Vagrant to continue starting the VM.

## 5. Blocker 3: Selecting local boot and Vagrant timing out
### 5.1 Vagrant output after resolving the duplicate rule
The next `vagrant up` output was:
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\client> vagrant up
Bringing machine 'pxe_client' up with 'virtualbox' provider...
==> pxe_client: Checking if box 'bento/rockylinux-9.6' version '202510.26.0' is up to date...
==> pxe_client: Clearing any previously set forwarded ports...
==> pxe_client: Fixed port collision for 22 => 2222. Now on port 2200.
==> pxe_client: Clearing any previously set network interfaces...
==> pxe_client: Preparing network interfaces based on configuration...
    pxe_client: Adapter 1: nat
==> pxe_client: Forwarding ports...
    pxe_client: 22 (guest) => 2200 (host) (adapter 1)
==> pxe_client: Running 'pre-boot' VM customizations...
==> pxe_client: Booting VM...
==> pxe_client: Waiting for machine to boot. This may take a few minutes...
    pxe_client: SSH address: 127.0.0.1:22
    pxe_client: SSH username: vagrant
    pxe_client: SSH auth method: private key
Timed out while waiting for the machine to boot. This means that
Vagrant was unable to communicate with the guest machine within
the configured ("config.vm.boot_timeout" value) time period.

If you look above, you should be able to see the error(s) that
Vagrant had when attempting to connect to the machine. These errors
are usually good hints as to what may be wrong.

If you're using a custom box, make sure that networking is properly
working and you're able to connect to the machine. It is a common
problem that networking isn't setup properly in these boxes.
Verify that authentication configurations are also setup properly,
as well.

If the box appears to be booting properly, you may want to increase
the timeout ("config.vm.boot_timeout") value.
```
Vagrant was waiting for an SSH connection as the vagrant user. However, the VM was booting the Ubuntu system installed by PXE, not a standard booted instance of the original Rocky Linux box.

Therefore, the Vagrant SSH timeout did not mean that Ubuntu itself had failed to boot.

### 5.2 Evidence from the VirtualBox console
<img width="1022" height="872" alt="Screenshot 2026-10-22 095505" src="https://github.com/user-attachments/assets/3080dc76-e10f-4f26-b2b5-6a8a84e11079" />

The console displayed:
```
Ubuntu 24.04.5 LTS ubuntu24pxe1 tty1

ubuntu24pxe1 login:
```
It also showed that cloud-init had completed:
```
[   59.070029] cloud-init[1069]: Cloud-init v. 26.1-0ubuntu1~24.04.1 finished at Thu, 22 Oct 2026 08:44:32 +0000.
Datasource DataSourceNone.

Up 59.05 seconds.
```
The console listed an `ansible` user and its authorized SSH key:
``
Authorized keys from /home/ansible/.ssh/authorized_keys for user ansible
``
This was evidence that Ubuntu had booted and completed its cloud-init processing.

### 5.3 Local login succeeded
At the console login prompt, the following username was entered:
``
ansible
``
After entering the correct password, the login succeeded:
``
Welcome to Ubuntu 24.04.5 LTS (GNU/Linux 6.8.0-139-generic x86_64)
``
The shell prompt became:
``
ansible@ubuntu24pxe1:~$
``
Result: Local console login into the installed Ubuntu system was successful.

## 6. Finding the client's IP and MAC addresses
<img width="1022" height="872" alt="Screenshot 2026-10-22 095625" src="https://github.com/user-attachments/assets/7f810516-6a0e-40aa-8f47-fad73209412b" />

Once logged in to Ubuntu as ansible, the following command was run:
``
ip addr
``
The output was:
```
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute
       valid_lft forever preferred_lft forever

2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:6f:16:b4 brd ff:ff:ff:ff:ff:ff
    inet 192.168.0.10/24 brd 192.168.0.255 scope global enp0s3
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fe6f:16b4/64 scope link
       valid_lft forever preferred_lft forever
```
The MAC address matches the MAC address reported by iPXE earlier:
``
net0: 08:00:27:6f:16:b4
``
It also matches the NIC MAC address shown by VirtualBox:
``
NIC 1: MAC: 0800276F16B4
``
The MAC addresses are the same, with VirtualBox omitting the colons in its output.

This provides strong confirmation that the client interface seen during PXE boot is the same interface used by the installed Ubuntu system.

---

# Useful commands for future checks

Show interfaces, IPv4 addresses and MAC addresses in a compact format:
``
ip -br addr
``
Show the MAC address of a specific interface:
``
cat /sys/class/net/enp0s3/address
``
Expected output:
``
08:00:27:6f:16:b4
``
Show only the IPv4 address for enp0s3:
``
ip -4 addr show enp0s3
``
Check connectivity to the PXE server:
``
ping -c 4 192.168.0.254
``
The ping command was not yet recorded as tested, so its result must be checked independently.


---

# Exercise 4.2

## Editing the setup.sh script
Added the following script lines to the end of the file:
```
### Install Ansible

apt-get install -y ansible

### Create ansible user

if ! id ansible >/dev/null 2>&1; then
    useradd -m -s /bin/bash ansible
    echo "ansible:minad1234" | chpasswd
    usermod -aG sudo ansible
fi

### Generate SSH key for ansible user

if [ ! -f /home/ansible/.ssh/id_rsa ]; then
    sudo -u ansible mkdir -p /home/ansible/.ssh

    sudo -u ansible ssh-keygen \
      -t rsa \      -b 4096 \
      -N "" \
      -f /home/ansible/.ssh/id_rsa
fi
```

Restarting the pxe_server

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> vagrant halt
==> pxe_server: Attempting graceful shutdown of VM...
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
==> pxe_server: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> pxe_server: flag to force provisioning. Provisioners marked to run always will still run.
```

Checking if ansible was installed but it wasn't
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> anisble --version
anisble : The term 'anisble' is not recognized as the name of a cmdlet, function, script file, or operable program.
Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
At line:1 char:1
+ anisble --version
+ ~~~~~~~
    + CategoryInfo          : ObjectNotFound: (anisble:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException
```

I did ssh to the server
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> vagrant ssh
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.8.0-86-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Oct 21 10:36:00 AM UTC 2026

  System load:           0.92
  Usage of /:            27.5% of 30.34GB
  Memory usage:          11%
  Swap usage:            0%
  Processes:             179
  Users logged in:       0
  IPv4 address for eth0: 10.0.2.15
  IPv6 address for eth0: fd17:625c:f037:2:a00:27ff:fef8:c2eb


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
Last login: Tue Oct 20 23:09:24 2026 from 10.0.2.2
```

I checked after logging into the server and it wasn't installed
```
vagrant@pxe-server:~$ ansible --version
-bash: ansible: command not found
vagrant@pxe-server:~$ exit
```



And I used `vagrant provision` to force provisioning the changes from the `setup.sh` script
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session4\vagrant-examples\vagrant-pxe\server> vagrant provision
==> pxe_server: Running provisioner: shell...
    pxe_server: Running: C:/Users/Admin/AppData/Local/Temp/vagrant-shell20261021-27756-28nb0w.sh
    pxe_server: Get:1 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]
    pxe_server: Hit:2 http://us.archive.ubuntu.com/ubuntu noble InRelease
    pxe_server: Get:3 http://us.archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
    pxe_server: Get:4 http://us.archive.ubuntu.com/ubuntu noble-backports InRelease [126 kB]
    pxe_server: Get:5 http://security.ubuntu.com/ubuntu noble-security/main amd64 Components [46.4 kB]
    pxe_server: Get:6 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Components [76.3 kB]
    pxe_server: Get:7 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 Packages [1,400 kB]
    pxe_server: Get:8 http://us.archive.ubuntu.com/ubuntu noble-updates/main Translation-en [309 kB]
    pxe_server: Get:9 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 Components [181 kB]
    pxe_server: Get:10 http://us.archive.ubuntu.com/ubuntu noble-updates/universe amd64 Packages [1,706 kB]
    pxe_server: Get:11 http://us.archive.ubuntu.com/ubuntu noble-updates/universe Translation-en [342 kB]
    pxe_server: Get:12 http://us.archive.ubuntu.com/ubuntu noble-updates/universe amd64 Components [388 kB]
    pxe_server: Get:13 http://us.archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Components [940 B]
    pxe_server: Get:14 http://us.archive.ubuntu.com/ubuntu noble-backports/main amd64 Components [5,744 B]
    pxe_server: Get:15 http://us.archive.ubuntu.com/ubuntu noble-backports/universe amd64 Components [12.6 kB]
    pxe_server: Fetched 4,847 kB in 2s (2,406 kB/s)
    pxe_server: Reading package lists...
    pxe_server: Downloading ISO files to /vagrant/www/sharedisos... this may take some time
    pxe_server: File ‘/vagrant/www/sharedisos/ubuntu-24.04.5-live-server-amd64.iso’ already there; not retrieving.
    pxe_server:
    pxe_server: copying the initrd and vmlinuz files from the ISO to /srv/tftp/ubuntu
    pxe_server: Creating /srv/tftp/ubuntu directory
    pxe_server: copy tftp files complete
    pxe_server: /srv/tftp/ubuntu directory already exists - not copying ISO files to nfs server
    pxe_server: Reading package lists...
    pxe_server: Building dependency tree...
    pxe_server: Reading state information...
    pxe_server: tftpd-hpa is already the newest version (5.2+20150808-1.4build1).
    pxe_server: 0 upgraded, 0 newly installed, 0 to remove and 245 not upgraded.
    pxe_server: Job for tftpd-hpa.service failed because the control process exited with error code.
    pxe_server: See "systemctl status tftpd-hpa.service" and "journalctl -xeu tftpd-hpa.service" for details.
    pxe_server: Reading package lists...
    pxe_server: Building dependency tree...
    pxe_server: Reading state information...
    pxe_server: nfs-kernel-server is already the newest version (1:2.6.4-3ubuntu5.1).
    pxe_server: 0 upgraded, 0 newly installed, 0 to remove and 245 not upgraded.
    pxe_server: Reading package lists...
    pxe_server: Building dependency tree...
    pxe_server: Reading state information...
    pxe_server: nginx is already the newest version (1.24.0-2ubuntu7.18).
    pxe_server: 0 upgraded, 0 newly installed, 0 to remove and 245 not upgraded.
    pxe_server: Reading package lists...
    pxe_server: Building dependency tree...
    pxe_server: Reading state information...
    pxe_server: isc-dhcp-server is already the newest version (4.4.3-P1-4ubuntu2).
    pxe_server: 0 upgraded, 0 newly installed, 0 to remove and 245 not upgraded.
    pxe_server: Reading package lists...
    pxe_server: Building dependency tree...
    pxe_server: Reading state information...
    pxe_server: The following additional packages will be installed:
    pxe_server:   ansible-core ieee-data python3-argcomplete python3-dnspython
    pxe_server:   python3-kerberos python3-libcloud python3-lockfile python3-netaddr
    pxe_server:   python3-ntlm-auth python3-passlib python3-requests-ntlm python3-resolvelib
    pxe_server:   python3-selinux python3-simplejson python3-winrm python3-xmltodict
    pxe_server: Suggested packages:
    pxe_server:   cowsay sshpass python3-trio python3-aioquic python3-h2 python3-httpx
    pxe_server:   python3-httpcore python-lockfile-doc ipython3 python-netaddr-docs
    pxe_server: The following NEW packages will be installed:
    pxe_server:   ansible ansible-core ieee-data python3-argcomplete python3-dnspython
    pxe_server:   python3-kerberos python3-libcloud python3-lockfile python3-netaddr
    pxe_server:   python3-ntlm-auth python3-passlib python3-requests-ntlm python3-resolvelib
    pxe_server:   python3-selinux python3-simplejson python3-winrm python3-xmltodict
    pxe_server: 0 upgraded, 17 newly installed, 0 to remove and 245 not upgraded.
    pxe_server: Need to get 21.9 MB of archives.
    pxe_server: After this operation, 330 MB of additional disk space will be used.
    pxe_server: Get:1 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-resolvelib all 1.0.1-1 [25.7 kB]
    pxe_server: Get:2 http://us.archive.ubuntu.com/ubuntu noble/main amd64 python3-dnspython all 2.6.1-1ubuntu1 [163 kB]
    pxe_server: Get:3 http://us.archive.ubuntu.com/ubuntu noble/main amd64 ieee-data all 20220827.1 [2,113 kB]
    pxe_server: Get:4 http://us.archive.ubuntu.com/ubuntu noble/main amd64 python3-netaddr all 0.8.0-2ubuntu1 [319 kB]
    pxe_server: Get:5 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 ansible-core all 2.16.3-0ubuntu2 [1,280 kB]
    pxe_server: Get:6 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 ansible all 9.2.0+dfsg-0ubuntu5 [16.4 MB]
    pxe_server: Get:7 http://us.archive.ubuntu.com/ubuntu noble-updates/universe amd64 python3-argcomplete all 3.1.4-1ubuntu0.1 [33.8 kB]
    pxe_server: Get:8 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-kerberos amd64 1.1.14-3.1build9 [21.2 kB]
    pxe_server: Get:9 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-lockfile all 1:0.12.2-3 [13.7 kB]
    pxe_server: Get:10 http://us.archive.ubuntu.com/ubuntu noble/main amd64 python3-simplejson amd64 3.19.2-1build2 [54.5 kB]
    pxe_server: Get:11 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-libcloud all 3.4.1-5 [751 kB]
    pxe_server: Get:12 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-ntlm-auth all 1.5.0-1 [21.3 kB]
    pxe_server: Get:13 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-requests-ntlm all 1.1.0-3 [6,308 B]
    pxe_server: Get:14 http://us.archive.ubuntu.com/ubuntu noble-updates/universe amd64 python3-selinux amd64 3.5-2ubuntu2.1 [165 kB]
    pxe_server: Get:15 http://us.archive.ubuntu.com/ubuntu noble-updates/main amd64 python3-xmltodict all 0.13.0-1ubuntu0.24.04.1 [14.3 kB]
    pxe_server: Get:16 http://us.archive.ubuntu.com/ubuntu noble/universe amd64 python3-winrm all 0.4.3-2 [31.9 kB]
    pxe_server: Get:17 http://us.archive.ubuntu.com/ubuntu noble/main amd64 python3-passlib all 1.7.4-4 [476 kB]
    pxe_server: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    pxe_server: Fetched 21.9 MB in 4s (6,046 kB/s)
    pxe_server: Selecting previously unselected package python3-resolvelib.
(Reading database ... 51093 files and directories currently installed.)
    pxe_server: Preparing to unpack .../00-python3-resolvelib_1.0.1-1_all.deb ...
    pxe_server: Unpacking python3-resolvelib (1.0.1-1) ...
    pxe_server: Selecting previously unselected package python3-dnspython.
    pxe_server: Preparing to unpack .../01-python3-dnspython_2.6.1-1ubuntu1_all.deb ...
    pxe_server: Unpacking python3-dnspython (2.6.1-1ubuntu1) ...
    pxe_server: Selecting previously unselected package ieee-data.
    pxe_server: Preparing to unpack .../02-ieee-data_20220827.1_all.deb ...
    pxe_server: Unpacking ieee-data (20220827.1) ...
    pxe_server: Selecting previously unselected package python3-netaddr.
    pxe_server: Preparing to unpack .../03-python3-netaddr_0.8.0-2ubuntu1_all.deb ...
    pxe_server: Unpacking python3-netaddr (0.8.0-2ubuntu1) ...
    pxe_server: Selecting previously unselected package ansible-core.
    pxe_server: Preparing to unpack .../04-ansible-core_2.16.3-0ubuntu2_all.deb ...
    pxe_server: Unpacking ansible-core (2.16.3-0ubuntu2) ...
    pxe_server: Selecting previously unselected package ansible.
    pxe_server: Preparing to unpack .../05-ansible_9.2.0+dfsg-0ubuntu5_all.deb ...
    pxe_server: Unpacking ansible (9.2.0+dfsg-0ubuntu5) ...
    pxe_server: Selecting previously unselected package python3-argcomplete.
    pxe_server: Preparing to unpack .../06-python3-argcomplete_3.1.4-1ubuntu0.1_all.deb ...
    pxe_server: Unpacking python3-argcomplete (3.1.4-1ubuntu0.1) ...
    pxe_server: Selecting previously unselected package python3-kerberos.
    pxe_server: Preparing to unpack .../07-python3-kerberos_1.1.14-3.1build9_amd64.deb ...
    pxe_server: Unpacking python3-kerberos (1.1.14-3.1build9) ...
    pxe_server: Selecting previously unselected package python3-lockfile.
    pxe_server: Preparing to unpack .../08-python3-lockfile_1%3a0.12.2-3_all.deb ...
    pxe_server: Unpacking python3-lockfile (1:0.12.2-3) ...
    pxe_server: Selecting previously unselected package python3-simplejson.
    pxe_server: Preparing to unpack .../09-python3-simplejson_3.19.2-1build2_amd64.deb ...
    pxe_server: Unpacking python3-simplejson (3.19.2-1build2) ...
    pxe_server: Selecting previously unselected package python3-libcloud.
    pxe_server: Preparing to unpack .../10-python3-libcloud_3.4.1-5_all.deb ...
    pxe_server: Unpacking python3-libcloud (3.4.1-5) ...
    pxe_server: Selecting previously unselected package python3-ntlm-auth.
    pxe_server: Preparing to unpack .../11-python3-ntlm-auth_1.5.0-1_all.deb ...
    pxe_server: Unpacking python3-ntlm-auth (1.5.0-1) ...
    pxe_server: Selecting previously unselected package python3-requests-ntlm.
    pxe_server: Preparing to unpack .../12-python3-requests-ntlm_1.1.0-3_all.deb ...
    pxe_server: Unpacking python3-requests-ntlm (1.1.0-3) ...
    pxe_server: Selecting previously unselected package python3-selinux.
    pxe_server: Preparing to unpack .../13-python3-selinux_3.5-2ubuntu2.1_amd64.deb ...
    pxe_server: Unpacking python3-selinux (3.5-2ubuntu2.1) ...
    pxe_server: Selecting previously unselected package python3-xmltodict.
    pxe_server: Preparing to unpack .../14-python3-xmltodict_0.13.0-1ubuntu0.24.04.1_all.deb ...
    pxe_server: Unpacking python3-xmltodict (0.13.0-1ubuntu0.24.04.1) ...
    pxe_server: Selecting previously unselected package python3-winrm.
    pxe_server: Preparing to unpack .../15-python3-winrm_0.4.3-2_all.deb ...
    pxe_server: Unpacking python3-winrm (0.4.3-2) ...
    pxe_server: Selecting previously unselected package python3-passlib.
    pxe_server: Preparing to unpack .../16-python3-passlib_1.7.4-4_all.deb ...
    pxe_server: Unpacking python3-passlib (1.7.4-4) ...
    pxe_server: Setting up python3-lockfile (1:0.12.2-3) ...
    pxe_server: Setting up python3-passlib (1.7.4-4) ...
    pxe_server: Setting up python3-ntlm-auth (1.5.0-1) ...
    pxe_server: Setting up python3-resolvelib (1.0.1-1) ...
    pxe_server: Setting up python3-kerberos (1.1.14-3.1build9) ...
    pxe_server: Setting up python3-simplejson (3.19.2-1build2) ...
    pxe_server: Setting up python3-xmltodict (0.13.0-1ubuntu0.24.04.1) ...
    pxe_server: Setting up ieee-data (20220827.1) ...
    pxe_server: Setting up python3-dnspython (2.6.1-1ubuntu1) ...
    pxe_server: Setting up python3-selinux (3.5-2ubuntu2.1) ...
    pxe_server: Setting up python3-argcomplete (3.1.4-1ubuntu0.1) ...
    pxe_server: Setting up python3-requests-ntlm (1.1.0-3) ...
    pxe_server: Setting up python3-libcloud (3.4.1-5) ...
    pxe_server: Setting up python3-netaddr (0.8.0-2ubuntu1) ...
    pxe_server: Setting up python3-winrm (0.4.3-2) ...
    pxe_server: Setting up ansible-core (2.16.3-0ubuntu2) ...
    pxe_server: Setting up ansible (9.2.0+dfsg-0ubuntu5) ...
    pxe_server: Processing triggers for man-db (2.12.0-4build2) ...
    pxe_server:
    pxe_server: Running kernel seems to be up-to-date.
    pxe_server:
    pxe_server: No services need to be restarted.
    pxe_server:
    pxe_server: No containers need to be restarted.
    pxe_server:
    pxe_server: No user sessions are running outdated binaries.
    pxe_server:
    pxe_server: No VM guests are running outdated hypervisor (qemu) binaries on this host.
    pxe_server: Generating public/private rsa key pair.
    pxe_server: Your identification has been saved in /home/ansible/.ssh/id_rsa
    pxe_server: Your public key has been saved in /home/ansible/.ssh/id_rsa.pub
    pxe_server: The key fingerprint is:
    pxe_server: SHA256:BQnSa294K80pHC4JP7Vj7PsSHCW5ZgKIfEzdYxAgQhM ansible@pxe-server
    pxe_server: The key's randomart image is:
    pxe_server: +---[RSA 4096]----+
    pxe_server: |=E+o++=o..       |
    pxe_server: |+.+o o++o.       |
    pxe_server: |  ..  .=. .      |
    pxe_server: |    . B  .       |
    pxe_server: |     * +S        |
    pxe_server: |  .   * +        |
    pxe_server: |   o * O o       |
    pxe_server: |    = @ =        |
    pxe_server: |     =oB.        |
    pxe_server: +----[SHA256]-----+
```
Re-testing it and it worked. That proofs that ansible controller is successfully installed and also ansible user was created successfully
```
ansible@pxe-server:/home/vagrant$ ansible --version
ansible [core 2.16.3]
  config file = None
  configured module search path = ['/home/ansible/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  ansible collection location = /home/ansible/.ansible/collections:/usr/share/ansible/collections
  executable location = /usr/bin/ansible
  python version = 3.12.3 (main, Aug 14 2025, 17:47:21) [GCC 13.3.0] (/usr/bin/python3)
  jinja version = 3.1.2
  libyaml = True
```

## Create the necessary files to install apache on the new Ubuntu client machine

