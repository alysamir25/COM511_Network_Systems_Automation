# Using BIND as a dns server

As of 2015, BIND is the most widely used domain name server software.

The software was originally designed at the University of California, Berkeley (UC Berkeley) in the early 1980s. The name originates as an acronym of Berkeley Internet Name Domain

BIND 9 has evolved to be a very flexible, full-featured DNS system. Whatever your application is, BIND 9 probably has the required features. 
As the first, oldest, and most commonly deployed solution, there are more network engineers who are already familiar with BIND 9 than with any other system.

* [BIND9](https://www.isc.org/bind/)
* [BIND9 Documentation](https://bind9.readthedocs.io/)

However, as you will see, bind is quite complex and more difficult to configure than dnsmasq which we used previously.

Ther are a number of tutorials and examples on the internet for installing BIND on Linux.
For instance:
* https://oneuptime.com/blog/post/2026-02-21-ansible-dns-server-bind/view
* https://medium.com/@pmagyei/building-a-dns-server-from-scratch-with-bind9-on-ubuntu-10d4c4721577
* https://github.com/RabinSubedi3180/DNS-setup-ansible/blob/main/inventory

I have provided a simpler example here which is based on these tutorials.

## running example

First run [project-ansible3-1](../project-ansible3-1) so that we set up the network servers then run this example.

```
cd project-ansible3-1

vagrant up

vagrant status
ansible_controller        running (virtualbox)
ubuntu_1                  running (virtualbox)
ubuntu_2                  running (virtualbox)
ubuntu_bind               running (virtualbox)


vagrant ssh ansible-controller

sudo su ansible

# run the original project if you havent done so

cd /vagrant/ansible/project-ansible3-1

ansible-playbook -i inventory/dev/hosts.ini  setup-dnsmasq-server.yml

# now run the bind example

cd /vagrant/ansible/project-ansible3-2

ansible-playbook -i inventory.ini dns_server.yml

```

This sets up a bind server on an additional ubuntu machine which was not involved in the dnsmasq example


This playbook dynamically builds both forward and reverse zone database files directly from your existing Ansible inventory groups and automatically calculates an updated timestamp-based zone serial number (`YYYYMMDDHH`) on every execution to prevent synchronization lags. It also automatically configures managed client nodes to route queries through the new DNS infrastructure.

## Project Directory Structure

```text
.
├── ansible.cfg          # Core Ansible engine and privilege elevation profiles
├── dns_server.yml       # Main orchestration playbook (Server & Client plays)
├── inventory            # Environment definitions and managed server mappings
└── templates
    ├── forward.zone.j2  # Jinja2 template for domain name-to-IP maps
    ├── named.conf.j2    # Jinja2 template for main BIND daemon settings
    └── reverse.zone.j2  # Jinja2 template for IP-to-domain pointer mappings
```

## Deployment Steps

### 1. Update the Inventory Placeholders if need be

Open the `inventory.ini` file and update the IP addresses, interface names, and domain variables to match your environment layout:

I have put different domain names for the servers already running in our example

```ini
[dnsservers]
dns1 ansible_host=192.168.100.250

[webservers]
web01 ansible_host=192.168.100.10

[appservers]
app01 ansible_host=192.168.100.20

[controllers]
ctrl01 ansible_host=192.168.100.254

[company_nodes:children]
webservers
appservers
controllers

[dnsservers:vars]
domain_name=practice.local
reverse_net=100.168.192
dns_ip=192.168.100.250
```

### 2. Post-Deployment Verification

The name server gives the following names

| dns name             | machine            | ip address      |
|:---------------------|:-------------------|:----------------|
| web01.practice.local | ubuntu_1           | 192.168.100.20  |
| app01.practice.local | ubuntu_2           | 192.168.100.20  |
| ctl01.practice.local | ansible_controller | 192.168.100.254 |
| dns1.practice.local  | ubuntu_bind        | 192.168.100.250 |

Use dig and nslookup to check the new names

```
nslookup google.com 192.168.100.250

nslookup web01.practice.local 192.168.100.250

```
Challenge: How would we set up this server to use this dns server to resolve ping queries instead of the default server - and could we use both?


