[Personal Learning Record](../../personal_journal/personal_journal.md) | [Session Notes](../sessions/README.md) 

# Session 3

## Topics covered
*What topics were covered in this session*
This session focused on core network services that are essential for managing and automating network infrastructure.

Topics covered included:

* DNS (Domain Name System)
* DHCP (Dynamic Host Configuration Protocol)
* dnsmasq
* BIND9 DNS server
* Host-only and NAT networking in VirtualBox
* Ansible automation for DNS and DHCP configuration
* Name resolution using nslookup and dig
* Packet analysis using tcpdump
* User authentication and authorisation concepts

The session demonstrated how DNS and DHCP services can be automated using Ansible and how these services work together to support network communication.
---

## Personal Notes and research following this session
*Which class sessions and personal research refers to technology in this proposal. Link to examples.*
Following the session, I researched the purpose and differences between DNS and DHCP.

I learned that DHCP automatically assigns IP addresses and network settings to devices when they join a network, while DNS translates hostnames into IP addresses so that users do not need to remember numerical addresses.

I also researched the differences between dnsmasq and BIND9:

* dnsmasq is lightweight and simple to configure.
* BIND9 is an enterprise-grade DNS solution commonly used in larger environments.
* Both services can provide DNS functionality, but BIND offers more advanced features and scalability.

I reviewed the provided examples:

* project-ansible3-1 (dnsmasq DNS and DHCP server)
* project-ansible3-2 (BIND9 DNS server)

I also researched the DHCP DORA process:

* DHCP Discover
* DHCP Offer
* DHCP Request
* DHCP Acknowledge

This helped me better understand the packet captures seen using tcpdump.

# Relevance to Coursework
The Sirius Cybernetics case study specifically requires DNS and DHCP services to support a growing number of regional offices.

The technologies explored in this session demonstrate how network services can be centrally managed and automated using Infrastructure as Code principles, reducing the need for manual configuration as the organisation expands.
---

## Exercises and results
*What exercises did you complete. What results. Screen shots and notes*

# Exercise 3.1 - DNS using dnsmasq
I deployed a dnsmasq DNS server using Ansible on the ansible-controller machine.

I tested DNS resolution using:
```
nslookup ubuntu-1.lab.example.com
```
and
```
dig @192.168.100.254 ubuntu-1.lab.example.com
```
Results:

* Internal hostnames successfully resolved to IP addresses.
* DNS records were automatically generated from the Ansible inventory.
* I was able to connect to hosts using domain names instead of IP addresses.

Example:
```
ssh ansible@ubuntu-1.lab.example.com
```

# Exercise 3.2 - DHCP using dnsmasq
I deployed a dnsmasq DHCP server using Ansible and observed DHCP communication using tcpdump.

Command used:
```
sudo tcpdump -i eth1 port 67 or port 68
```
Results:

I observed the DHCP process:

* Client requesting an address (DHCP Discover)
* Server offering an address (DHCP Offer)
* Client requesting the offered address (DHCP Request)
* Server confirming the address (DHCP Acknowledge)

The client machines successfully received IP addresses from the DHCP server.

# Exercise 3.3 - BIND DNS Server
I deployed a BIND9 DNS server using Ansible on the ubuntu_bind virtual machine.

I tested DNS resolution using:
```
nslookup google.com 192.168.100.250
```
and
```
nslookup web01.practice.local 192.168.100.250
```
Results:

* External domains were successfully resolved.
* Internal domains were successfully resolved.
* Forward and reverse lookup zones were automatically generated from the Ansible inventory.

This demonstrated a more advanced and scalable DNS implementation compared to dnsmasq.
---

## Summary of learning
*What did you learn through these exercises*

This session helped me understand how core network services operate and how they can be automated using Ansible.

I learned that DHCP is responsible for automatically providing devices with network settings, while DNS allows systems to locate devices using human-readable names instead of IP addresses.

Using tcpdump allowed me to see DHCP traffic in real time and better understand the communication process between clients and servers.

I also learned the differences between dnsmasq and BIND9 and gained experience deploying and managing both solutions using Infrastructure as Code techniques.

The most important lesson from this session was understanding how DNS and DHCP work together to support network infrastructure and how automation can simplify the management of these services within larger environments. These concepts will be valuable when designing the automated infrastructure solution for the Sirius Cybernetics coursework scenario.
---
