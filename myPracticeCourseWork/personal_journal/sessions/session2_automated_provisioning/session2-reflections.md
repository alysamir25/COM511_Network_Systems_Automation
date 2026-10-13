[Personal Learning Record](../../personal_journal/personal_journal.md) | [Session Notes](../sessions/README.md) 

# Session 2 – Automated Provisioning of Servers Using Ansible

## Topics covered
*What topics were covered in this session*
This session focused on automated server provisioning using Ansible and expanding the virtual infrastructure created in Session 1.

* Linux package management using apt and yum
* Automated software installation
* Multi-machine provisioning using Vagrant
* SSH authentication using passwords and keys
* Host-only networking
* Static and dynamic IP addressing
* Ansible inventories
* Ansible ad-hoc commands
* Ansible playbooks
* Infrastructure as Code (IaC)
* Automated deployment and configuration management
* The session demonstrated how Infrastructure as Code can be used to manage multiple servers consistently from a central controller.

---

## Personal Notes and research following this session
*Which class sessions and personal research refers to technology in this proposal. Link to examples.*

Ansible is an open-source automation and configuration management platform that allows administrators to manage multiple servers from a single control node. Unlike some alternatives such as Puppet or Chef, Ansible is agentless and primarily uses SSH for communication.

Key concepts I researched after the session:

Ansible Inventory
An inventory file defines which machines Ansible can manage.

Example:

[ubuntu]
192.168.56.20

[rocky]
192.168.56.30

---

## Exercises and results
*What exercises did you complete. What results. Screen shots and notes*

*After vagrant fired up the 3 machines, I did the following:*




## Summary of learning
*What did you learn through these exercises*
