[Personal Learning Record](../../personal_journal/personal_journal.md) | [Session Notes](../sessions/README.md) 

# Session 1 – Virtualisation and Infrastructure as Code

## Topics covered
*What topics were covered in this session*
An understanding of Infrastructure as Code (IaC), version control using Git, virtualisation technologies, and automated virtual machine provisioning using Vagrant.

---

During this session, I:

* Created and configured my GitHub account.
* Forked the Network Systems Automation repository into my own GitHub account.
* Set up a local working environment for the module.
* Installed and configured VirtualBox.
* Learned the difference between Type 1 and Type 2 hypervisors.
* Created virtual machines using Ubuntu Linux.
* Explored the use of Vagrant for automated virtual machine deployment.
* Configured SSH access to virtual machines.
* Automatically provisioned Apache using a Vagrant shell provisioner.

---

Before this session, I understood that virtual machines could be used to run multiple operating systems on a single computer. However, I had not fully appreciated how automation can be used to deploy and configure infrastructure consistently.

I learned that Infrastructure as Code allows infrastructure configurations to be stored in version-controlled files rather than relying on manual setup. This provides consistency, repeatability, and easier troubleshooting.

I also learned that Vagrant can automatically build virtual machines using configuration files, which significantly reduces deployment time compared to creating systems manually.

---

## Personal Notes and research following this session
*Which class sessions and personal research refers to technology in this proposal. Link to examples.*

Outside of the session, I researched:

* Infrastructure as Code principles.
* Vagrant provisioning methods.
* Virtualisation best practices.
* Differences between Type 1 and Type 2 hypervisors.

---

## Exercises and results
*What exercises did you complete. What results. Screen shots and notes*

I initially found it difficult to understand the relationship between VirtualBox and Vagrant.

After experimenting with both tools, I realised that VirtualBox provides the virtualisation platform while Vagrant automates the creation and configuration of virtual machines running on that platform.

I also experienced some networking issues when first attempting to access services running inside the guest virtual machine but resolved this by configuring port forwarding correctly.

---

## Summary of learning
*What did you learn through these exercises*

This session provided a strong foundation for the module and highlighted the importance of automation within modern IT environments. I gained confidence working with virtual machines and began to understand how infrastructure can be managed through code rather than manual processes.

---
