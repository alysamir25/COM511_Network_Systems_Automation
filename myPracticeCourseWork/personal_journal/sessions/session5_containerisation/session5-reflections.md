[Personal Learning Record](../../personal_journal/personal_journal.md) | [Session Notes](../sessions/README.md) 

# Session 5

## Topics covered
*What topics were covered in this session*
* Containers vs VMs, images, Dockerfiles, port mapping and container naming.
* Docker Desktop on Windows and Docker Engine on a Vagrant VM.


## Personal Notes and research following this session
*Which class sessions and personal research refers to technology in this proposal. Link to examples.*
* Containers share the host kernel and performed as well as or better than VMs in almost all tests (Felter et al. 2015).
* An image is only as safe as its source; many Docker Hub images contained known vulnerabilities (Shu, Gu and Enck 2017).
* Membership of the `docker` group grants root-level privileges (Docker n.d.d), and base images should be pinned by digest (Docker n.d.a).


## Exercises and results
*What exercises did you complete. What results. Screen shots and notes*
* Started `ubuntu:22.04` containers and installed Apache by hand inside `ubuntu1` and `ubuntu2` (ports 8081/8082). Both served the Apache page.
* Errors: reusing port 8081 ("port is already allocated") and reusing a container name ("Conflict… already in use").
* Built `my-apache` from a Dockerfile and started `apache-1` and `apache-2` from it, with no manual steps.
* On the Vagrant `docker-host`, the build failed because the VM could not resolve `registry-1.docker.io`. A quick fix was writing 8.8.8.8 into `/etc/resolv.conf`. The proper fix was the VirtualBox NAT DNS setting in the Vagrantfile (Oracle n.d.).


## Summary of learning
*What did you learn through these exercises*
* Hand-built containers disappear when removed; a Dockerfile in Git can always be rebuilt.
* Every build depended on public DNS and Docker Hub, which conflicts with a self-hosted design. An internal registry mirror is needed.
* Unpinned base images mean two builds at different times may differ.
