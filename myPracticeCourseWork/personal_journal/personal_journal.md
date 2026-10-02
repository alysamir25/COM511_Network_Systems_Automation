# rockylinux-9.6

Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Loading personal and system profiles took 597ms.
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session1\vagrant-examples\bento\rockylinux-9.6> vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'bento/rockylinux-9.6'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'bento/rockylinux-9.6' version '202510.26.0' is up to date...
==> default: Setting the name of the VM: rockylinux-96_default_1790848075640_45510
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
    default:
    default: Vagrant insecure key detected. Vagrant will automatically replace
    default: this with a newly generated keypair for better security.
    default:
    default: Inserting generated public key within guest...
    default: Removing insecure key from the guest if it's present...
    default: Key inserted! Disconnecting and reconnecting using new SSH key...
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
==> default: Mounting shared folders...
    default: C:/devel/gitrepos/COM511_Network_Systems_Automation/myPracticeCourseWork/session1/vagrant-examples/bento/rockylinux-9.6 => /vagrant
==> default: Running provisioner: shell...
    default: Running: inline script
    default: /tmp/vagrant-shell: line 1: apt-get: command not found
    default: Rocky Linux 9 - BaseOS                          4.8 MB/s |  35 MB     00:07
    default: Rocky Linux 9 - AppStream                       5.1 MB/s |  26 MB     00:05
    default: Rocky Linux 9 - Extras                           15 kB/s |  17 kB     00:01
    default: Dependencies resolved.
    default: ================================================================================
    default:  Package                Arch        Version                Repository      Size
    default: ================================================================================
    default: Installing:
    default:  httpd                  x86_64      2.4.62-13.el9_8.6      appstream       46 k
    default: Installing dependencies:
    default:  apr                    x86_64      1.7.0-12.el9_3         appstream      122 k
    default:  apr-util               x86_64      1.6.1-23.el9_8.1       appstream       94 k
    default:  apr-util-bdb           x86_64      1.6.1-23.el9_8.1       appstream       12 k
    default:  httpd-core             x86_64      2.4.62-13.el9_8.6      appstream      1.4 M
    default:  httpd-filesystem       noarch      2.4.62-13.el9_8.6      appstream       13 k
    default:  httpd-tools            x86_64      2.4.62-13.el9_8.6      appstream       79 k
    default:  rocky-logos-httpd      noarch      90.17-1.el9            appstream       24 k
    default: Installing weak dependencies:
    default:  apr-util-openssl       x86_64      1.6.1-23.el9_8.1       appstream       14 k
    default:  mod_http2              x86_64      2.0.26-6.el9_8.2       appstream      163 k
    default:  mod_lua                x86_64      2.4.62-13.el9_8.6      appstream       60 k
    default:
    default: Transaction Summary
    default: ================================================================================
    default: Install  11 Packages
    default:
    default: Total download size: 2.0 M
    default: Installed size: 6.1 M
    default: Downloading Packages:
    default: (1/11): apr-util-bdb-1.6.1-23.el9_8.1.x86_64.rp  28 kB/s |  12 kB     00:00
    default: (2/11): apr-1.7.0-12.el9_3.x86_64.rpm           259 kB/s | 122 kB     00:00
    default: (3/11): apr-util-openssl-1.6.1-23.el9_8.1.x86_6 213 kB/s |  14 kB     00:00
    default: (4/11): httpd-2.4.62-13.el9_8.6.x86_64.rpm      688 kB/s |  46 kB     00:00
    default: (5/11): apr-util-1.6.1-23.el9_8.1.x86_64.rpm    165 kB/s |  94 kB     00:00
    default: (6/11): httpd-filesystem-2.4.62-13.el9_8.6.noar 122 kB/s |  13 kB     00:00
    default: (7/11): httpd-core-2.4.62-13.el9_8.6.x86_64.rpm 6.5 MB/s | 1.4 MB     00:00
    default: (8/11): httpd-tools-2.4.62-13.el9_8.6.x86_64.rp 524 kB/s |  79 kB     00:00
    default: (9/11): mod_http2-2.0.26-6.el9_8.2.x86_64.rpm   1.3 MB/s | 163 kB     00:00
    default: (10/11): mod_lua-2.4.62-13.el9_8.6.x86_64.rpm   892 kB/s |  60 kB     00:00
    default: (11/11): rocky-logos-httpd-90.17-1.el9.noarch.r 289 kB/s |  24 kB     00:00
    default: --------------------------------------------------------------------------------
    default: Total                                           1.6 MB/s | 2.0 MB     00:01
    default: Running transaction check
    default: Transaction check succeeded.
    default: Running transaction test
    default: Transaction test succeeded.
    default: Running transaction
    default:   Preparing        :                                                        1/1
    default:   Installing       : apr-1.7.0-12.el9_3.x86_64                             1/11
    default:   Installing       : apr-util-bdb-1.6.1-23.el9_8.1.x86_64                  2/11
    default:   Installing       : apr-util-openssl-1.6.1-23.el9_8.1.x86_64              3/11
    default:   Installing       : apr-util-1.6.1-23.el9_8.1.x86_64                      4/11
    default:   Installing       : httpd-tools-2.4.62-13.el9_8.6.x86_64                  5/11
    default:   Installing       : rocky-logos-httpd-90.17-1.el9.noarch                  6/11
    default:   Running scriptlet: httpd-filesystem-2.4.62-13.el9_8.6.noarch             7/11
    default:   Installing       : httpd-filesystem-2.4.62-13.el9_8.6.noarch             7/11
    default:   Installing       : httpd-core-2.4.62-13.el9_8.6.x86_64                   8/11
    default:   Installing       : mod_lua-2.4.62-13.el9_8.6.x86_64                      9/11
    default:   Installing       : mod_http2-2.0.26-6.el9_8.2.x86_64                    10/11
    default:   Installing       : httpd-2.4.62-13.el9_8.6.x86_64                       11/11
    default:   Running scriptlet: httpd-2.4.62-13.el9_8.6.x86_64                       11/11
    default:   Verifying        : apr-1.7.0-12.el9_3.x86_64                             1/11
    default:   Verifying        : apr-util-1.6.1-23.el9_8.1.x86_64                      2/11
    default:   Verifying        : apr-util-bdb-1.6.1-23.el9_8.1.x86_64                  3/11
    default:   Verifying        : apr-util-openssl-1.6.1-23.el9_8.1.x86_64              4/11
    default:   Verifying        : httpd-2.4.62-13.el9_8.6.x86_64                        5/11
    default:   Verifying        : httpd-core-2.4.62-13.el9_8.6.x86_64                   6/11
    default:   Verifying        : httpd-filesystem-2.4.62-13.el9_8.6.noarch             7/11
    default:   Verifying        : httpd-tools-2.4.62-13.el9_8.6.x86_64                  8/11
    default:   Verifying        : mod_http2-2.0.26-6.el9_8.2.x86_64                     9/11
    default:   Verifying        : mod_lua-2.4.62-13.el9_8.6.x86_64                     10/11
    default:   Verifying        : rocky-logos-httpd-90.17-1.el9.noarch                 11/11
    default:
    default: Installed:
    default:   apr-1.7.0-12.el9_3.x86_64
    default:   apr-util-1.6.1-23.el9_8.1.x86_64
    default:   apr-util-bdb-1.6.1-23.el9_8.1.x86_64
    default:   apr-util-openssl-1.6.1-23.el9_8.1.x86_64
    default:   httpd-2.4.62-13.el9_8.6.x86_64
    default:   httpd-core-2.4.62-13.el9_8.6.x86_64
    default:   httpd-filesystem-2.4.62-13.el9_8.6.noarch
    default:   httpd-tools-2.4.62-13.el9_8.6.x86_64
    default:   mod_http2-2.0.26-6.el9_8.2.x86_64
    default:   mod_lua-2.4.62-13.el9_8.6.x86_64
    default:   rocky-logos-httpd-90.17-1.el9.noarch
    default:
    default: Complete!
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session1\vagrant-examples\bento\rockylinux-9.6> sudo systemctl enable httpd; sudo systemctl start firewalld
Sudo is disabled on this machine. To enable it, go to the Developer Settings page in the Settings app
Sudo is disabled on this machine. To enable it, go to the Developer Settings page in the Settings app
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session1\vagrant-examples\bento\rockylinux-9.6> sudo systemctl enable httpd; sudo systemctl start firewalld
Command not found
Command not found
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session1\vagrant-examples\bento\rockylinux-9.6> vagrant ssh

This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
[vagrant@localhost ~]$ sudo systemctl enable httpd; sudo systemctl start firewalld
Created symlink /etc/systemd/system/multi-user.target.wants/httpd.service → /usr/lib/systemd/system/httpd.service.
[vagrant@localhost ~]$ sudo firewall-cmd --state
running
[vagrant@localhost ~]$ sudo firewall-cmd --get-zones
block dmz drop external home internal nm-shared public trusted work
[vagrant@localhost ~]$ sudo firewall-cmd --get-default-zone
public
[vagrant@localhost ~]$ sudo firewall-cmd --add-port=80/tcp
success
[vagrant@localhost ~]$ sudo firewall-cmd --add-port=80/tcp --permanent
success
[vagrant@localhost ~]$ sudo firewall-cmd --reload
success
[vagrant@localhost ~]$ sudo firewall-cmd --get-services
RH-Satellite-6 RH-Satellite-6-capsule afp amanda-client amanda-k5-client amqp amqps apcupsd audit ausweisapp2 bacula bacula-client bareos-director bareos-filedaemon bareos-storage bb bgp bitcoin bitcoin-rpc bitcoin-testnet bitcoin-testnet-rpc bittorrent-lsd ceph ceph-exporter ceph-mon cfengine checkmk-agent cockpit collectd condor-collector cratedb ctdb dds dds-multicast dds-unicast dhcp dhcpv6 dhcpv6-client distcc dns dns-over-tls docker-registry docker-swarm dropbox-lansync elasticsearch etcd-client etcd-server finger foreman foreman-proxy freeipa-4 freeipa-ldap freeipa-ldaps freeipa-replication freeipa-trust ftp galera ganglia-client ganglia-master git gpsd grafana gre high-availability http http3 https ident imap imaps ipfs ipp ipp-client ipsec irc ircs iscsi-target isns jenkins kadmin kdeconnect kerberos kibana klogin kpasswd kprop kshell kube-api kube-apiserver kube-control-plane kube-control-plane-secure kube-controller-manager kube-controller-manager-secure kube-nodeport-services kube-scheduler kube-scheduler-secure kube-worker kubelet kubelet-readonly kubelet-worker ldap ldaps libvirt libvirt-tls lightning-network llmnr llmnr-client llmnr-tcp llmnr-udp managesieve matrix mdns memcache minidlna mongodb mosh mountd mqtt mqtt-tls ms-wbt mssql murmur mysql nbd nebula netbios-ns netdata-dashboard nfs nfs3 nmea-0183 nrpe ntp nut opentelemetry openvpn ovirt-imageio ovirt-storageconsole ovirt-vmconsole plex pmcd pmproxy pmwebapi pmwebapis pop3 pop3s postgresql privoxy prometheus prometheus-node-exporter proxy-dhcp ps2link ps3netsrv ptp pulseaudio puppetmaster quassel radius rdp redis redis-sentinel rootd rpc-bind rquotad rsh rsyncd rtsp salt-master samba samba-client samba-dc sane sip sips slp smtp smtp-submission smtps snmp snmptls snmptls-trap snmptrap spideroak-lansync spotify-sync squid ssdp ssh steam-streaming svdrp svn syncthing syncthing-gui syncthing-relay synergy syslog syslog-tls telnet tentacle tftp tile38 tinc tor-socks transmission-client upnp-client vdsm vnc-server warpinator wbem-http wbem-https wireguard ws-discovery ws-discovery-client ws-discovery-tcp ws-discovery-udp wsman wsmans xdmcp xmpp-bosh xmpp-client xmpp-local xmpp-server zabbix-agent zabbix-server zerotier
[vagrant@localhost ~]$ sudo firewall-cmd --add-service=http --permanent
success
[vagrant@localhost ~]$ sudo firewall-cmd --reload
success
[vagrant@localhost ~]$
