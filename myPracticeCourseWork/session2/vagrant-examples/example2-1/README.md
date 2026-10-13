# Example 2-1 - installing apache using provisioner

These two projects show how to set up the Apache web server on ubuntu and rocky linux (RHEL) servers using vagrant provisioning scripts.

(This shows a possible answer to Session 1 Exercise 1.4 and Exercise 1.5)

## Ubuntu example

See [example2-1/ubuntu-24.04](./ubuntu-24.04)

In Ubuntu the Apache server package is called Apache2.
When it is installed it is enabled and started automatically.

port 80 in the VM is mapped to port 8080 on the guest.

The default index page can be accessed at [http://localhost:8081](http://localhost:8081)

The vagrant provisioner script copies a new web page to the VM.

This page can be accessed at [http://localhost:8081/examplewebpage.html](http://localhost:8081/examplewebpage.html)

## Rocky Linux example

See [example2-1/rockylinux-9.6](./rockylinux-9.6)

Rocky linux is a bit more complicated.

In Rocky the apache package is called `httpd`

We need to explicitly start and enable the httpd server

We also need to open the firewall ports to allow port 80 through.

The vagrant provisioner script copies a new web page to the VM.

This page can be accessed at [http://localhost:8082/examplewebpage.html](http://localhost:8082/examplewebpage.html)

