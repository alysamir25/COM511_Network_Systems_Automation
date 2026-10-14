# configuring BIND as a dns server

## running example

First run project-ansible3-1 then run this example

```
vagrant ssh ansible-controller

sudo su ansible

cd /vagrant/ansible/project-ansible3-2

ansible-playbook -i inventory.ini dns_server.yml


```

This sets up a bind server on an additional ubuntu machine which was not involved in the dnsmasq example

This is based on example [https://github.com/RabinSubedi3180/DNS-setup-ansible/blob/main/README.md](https://github.com/RabinSubedi3180/DNS-setup-ansible/blob/main/README.md)

# Automated BIND DNS Server Configuration on CentOS Stream 10

An automated Ansible infrastructure project that installs, configures, and secures an authoritative **BIND DNS Server** on **CentOS Stream 10**. 

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

## Features
* **Zero Duplicate Maintenance**: Hosts are parsed dynamically from inventory groups; no hardcoded lists inside zone templates.
* **Automated Zone Serials**: Uses precise runtime execution stamps to increment the zone serials without manual intervention.
* **CentOS Stream 10 Ready**: Native support for RHEL/CentOS 10 layout patterns, modern crypto-policies, and `systemd-resolved` environments.


## Deployment Steps

### 1. Update the Inventory Placeholders
Open the `inventory` file and update the IP addresses, interface names, and domain variables to match your environment layout:

```ini
[dns_servers]
dns1 ansible_host=192.0.2.10 ansible_user=root

[web_servers]
web01 ansible_host=192.0.2.21
web02 ansible_host=192.0.2.22

[db_servers]
db01  ansible_host=192.0.2.31
```

### 2. Execute the Playbook
Run the deployment orchestration to install the BIND engine, push configurations, punch through firewalls:

```bash
ansible-playbook dns_server.yml
```

## Post-Deployment Verification

### 1. Validate Syntax on the DNS Server
Log into your DNS server node and run the syntax check tools to ensure configurations compiled perfectly:

```bash
# Verify core configuration structure
named-checkconf

# Verify forward zone compilation mapping
named-checkzone practice.local /var/named/practice.local.forward
```

### 2. Test Client Network Resolution
From any of the managed client nodes, verify network query pathing using `dig`, `nslookup`, or `ping`:

```bash
# Test Forward DNS Resolution
dig appserver.practice.local +short

# Test Reverse DNS Resolution
dig -x 192.0.2.21 +short

# System Resolver Verification
ping -c 2 appserver.practice.local
```

## License
This project is open-source.

