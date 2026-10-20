#!/bin/bash

apt-get update

### get Ubuntu iso files for pxe booting

# download the ISO files to /vagrant/www/sharedisos to serve from the nginx pxe server
# -nc (or --no-clobber): Tells wget to skip downloading if a file with the same name already exists in the destination directory
# -P creates the directory if it doesn't exist and specifies the destination directory for the downloaded files

echo "Downloading ISO files to /vagrant/www/sharedisos... this may take some time"
wget -nc -P /vagrant/www/sharedisos https://releases.ubuntu.com/noble/ubuntu-24.04.5-live-server-amd64.iso

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

umount /media/iso
rm -r /media/iso

### TFTPD configuration
apt-get install -y tftpd-hpa
cp /vagrant/config/resources/tftpd-hpa /etc/default/tftpd-hpa

cp -R /vagrant/config/resources/pxelinux.cfg /srv/tftp
cp -R /vagrant/config/resources/syslinux     /srv/tftp
cp    /vagrant/config/resources/pxelinux.0   /srv/tftp

systemctl restart tftpd-hpa

### NFS nfs-kernel-server configuration to serve the linux file system to the PXE clients
apt-get install -y nfs-kernel-server
cp  /etc/exports /etc/exports.old

# TODO this may create duplicate lines if the script is run multiple times, need to check for existing line before adding
echo "/srv/nfs/pxe/ubuntu *(ro,sync,no_wdelay,insecure_locks,no_root_squash,insecure,no_subtree_check)" >> /etc/exports

systemctl restart nfs-kernel-server

### NGNX nginx configuration to serve the ISO files and seed file to the PXE clients

apt-get install -y nginx
                
cp  /vagrant/config/resources/nginx-pxe-install.conf   /etc/nginx/sites-enabled/

systemctl restart nginx


### DHCPD configuration

apt-get install -y isc-dhcp-server
cp /vagrant/config/resources/dhcpd.conf      /etc/dhcp/dhcpd.conf
cp /vagrant/config/resources/isc-dhcp-server /etc/default/isc-dhcp-server
systemctl restart isc-dhcp-server

### PXE configuration (unused)
# apt-get install -y pxe
# apt-get install   -y dns-root-data dnsmasq dnsmasq-base libnetfilter-conntrack3 mtools pxe syslinux syslinux-common tftpd-hpa
# apt-get install   -y dns-root-data dnsmasq dnsmasq-base libnetfilter-conntrack3 mtools     syslinux syslinux-common tftpd-hpa
