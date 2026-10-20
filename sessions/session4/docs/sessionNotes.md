[Main Menu](../../../sessions/README.md) |[session4](../../session4/) | [Session 4 Notes](../docs/sessionNotes.md)

# Session 4 Notes

Quite a useful tutorial here [Understanding PXE: A Guide for IT Professionals: Preboot Execution Environment](https://www.youtube.com/watch?v=PdnwV69LQXY)

Run through the example in [vagrant-pxe](../vagrant-examples/vagrant-pxe).

# NFS 
To test the NFS install on the pxe boot server
```
# create a directory on which to mount the remote file system
mkdir -p ls /mnt/nfs/shared1/

# mount the remote nfs server
mount 192.168.0.254:/srv/nfs/pxe/ubuntu/iso /mnt/nfs/shared1

# now list the contents
ls /mnt/nfs/shared1/
boot  boot.catalog  casper  dists  EFI  install  md5sum.txt  pool  ubuntu

# finish by unmounting the share
umount /mnt/nfs/shared1/
```
