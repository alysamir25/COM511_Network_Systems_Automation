[Personal Learning Record](../../personal_journal/personal_journal.md) | [Session Notes](../sessions/README.md) 

# Session 4

## Topics covered
*What topics were covered in this session*
* PXE network boot: DHCP gives the boot server and file, TFTP sends the boot loader, and HTTP/NFS supply the installer.
* Ubuntu autoinstall and cloud-init for unattended installation.
* ISC DHCP, tftpd-hpa, Nginx and NFS on one Vagrant PXE server.
* Exercise 4.2: Ansible on the PXE server configuring the newly installed client.


## Personal Notes and research following this session
*Which class sessions and personal research refers to technology in this proposal. Link to examples.*
* RFC 2131 warns that an unauthorised DHCP server can hand out false addresses and settings (Droms 1997). This is why PXE belongs on an isolated deployment VLAN.
* Ubuntu autoinstall files are YAML, and cloud-init applies user-data on first boot (Canonical n.d.a; Canonical n.d.b). That is where the Ansible public key should go.
* With HTTP the installer downloads the whole ISO into RAM; NFS serves the files directly (Canonical n.d.c).


## Exercises and results
*What exercises did you complete. What results. Screen shots and notes*
- **Blocker 1:** the client could not download `pxelinux.0`. `file /etc/default/tftpd-hpa` showed Windows (CRLF) line endings, so tftpd-hpa would not start. Fix: `sed -i 's/\r$//'`, then restart. `ss -lunp` showed port 69 listening. The source file in the repo also needs fixing, not just the live copy.
- **Blocker 2:** the VM powered off during installation. `VBoxManage showvminfo` showed a duplicate SSH port-forward rule. Fix: `VBoxManage modifyvm … --natpf1 delete ssh`.
- **Blocker 3:** after choosing local boot, `vagrant up` timed out waiting for SSH, but the VirtualBox console login worked.
- Ubuntu was installed from the PXE menu and then booted from local disk, replacing the Rocky image.
- **Exercise 4.2:** Apache first failed on the PXE server, because Nginx already held port 80. The client's `apt` failed because it had two default routes; removing one with `ip route del` fixed it. Final run: `failed=0`, apache2 active, but `changed=1` on each re-run and password SSH to the client.


## Summary of learning
*What did you learn through these exercises*
* PXE is a chain (DHCP → TFTP → HTTP/NFS → cloud-init → SSH → Ansible). Any one manual or broken link stops the whole process.
* Line endings, NAT rules and routing broke more than the PXE services did. I learnt to debug from the bottom of the stack up.
* Inventory groups must target hosts precisely. Applying a web role to the provisioning server broke it.
* A green run is not the same as idempotent or secure: `changed=1` and password login were still left.
