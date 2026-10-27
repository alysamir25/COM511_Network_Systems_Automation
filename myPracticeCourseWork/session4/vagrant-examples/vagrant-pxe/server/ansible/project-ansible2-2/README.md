# project-ansible2-2 simple playbooks

In [project-ansible2-1](../project-ansible2-1) we activated ansible with a simple command which executed a single ansible module (ping).
In this exercise we will look at how ansible runs `playbooks` which contain multiple commands.

The principle role of ansible is to provision a fleet of devices or servers using ansible `playbooks` which are files written in the `yaml` format with the file extension `.yml` or `.yaml`.

Then ansible runs a playbook, by default it gatehrs facts on all of the servers it touches.

[playbook-facts-anddebug.yml](playbook-facts-anddebug.yml) prints out facts on the servers in the inventory using a debug message.

run the playbook using 

```
ansible-playbook playbook-facts-anddebug.yml -i inventory.ini
```

If you need to see more debug output you can use the `-v`, `-vv`, `-vvv`, `-vvvv` flags on the command line to see increasingly detailed debug inforation when the playbook is running.

e.g 

```
ansible-playbook playbook-facts-anddebug.yml -i inventory.ini -vv
```

## provisioning ubuntu and rocky servers using separate playbooks

In our previous work with vagrant provisioning scripts, we saw how we could use bash commands to install the apache web server on ubuntu and rocky linux. 
The commands were different for each distribution but the end result was the same; a running apache web server with an example web page which we supplied.

In the [inventory.ini](./inventory.ini) file you will see that the servers are categorised as `controllers`,  `ubuntu_hosts` and `rocky_hosts`.

[playbook-ubuntu-apache.yml](./playbook-ubuntu-apache.yml) is a playbook written specifically for ubuntu servers.

Look at this playbook and see if you can understand how it works. 

You can search the ansible documentation for each of the modules used. 

For instance the `ansible.builtin.service` module is documented here [https://docs.ansible.com/projects/ansible/latest/collections/ansible/builtin/service_module.html](https://docs.ansible.com/projects/ansible/latest/collections/ansible/builtin/service_module.html)

You will see that the `- hosts: ubuntu_hosts` directive specifies that this playbook should only run against servers categorised under `[ubuntu_hosts]` in the inventory.

Run the playbook using:

```
ansible-playbook playbook-ubuntu-apache.yml -i inventory.ini
```

When the playbook competes, you should be able to browse to the default apache index page on the ubuntu_1 server at
 [http://192.168.56.20/](http://192.168.56.20/)
 and the added page at [http://192.168.56.20/examplewebpage.html](http://192.168.56.20/examplewebpage.html)


The [playbook-rocky-apache.yml](./playbook-rocky-apache.yml) is similar but it uses yum to install httpd and it also configures firewalld to allow http and https traffic.

```
ansible-playbook playbook-rocky-apache.yml -i inventory.ini
```

the default apache index page on the rocky_1 server is at
 [http://192.168.56.20/](http://192.168.56.30/)
 and the added page at [http://192.168.56.30/examplewebpage.html](http://192.168.56.30/examplewebpage.html)


## using one playbook with roles to provision rocky and ubuntu servers

Ansible roles are sets of sub-tasks which can be called by a parent playbook. 
You can create your own roles but many roles are pre-created and automatically downloadable by ansible from the `ansible-galaxy` web site.

In this example [playbook-all-apache.yml](./playbook-all-apache.yml) is a playbook which calls in a role called `installApache` before running a task to copy the web page.

The `installApache` role has a `main.yml` task which is called first and selects whether to run tasks in `Debian.yml` or tasks in `Rhel.yml` depending upon the type of the operating system.
(remember Ubuntu is derived from Debian ans uses the same packaging system `apt`, Rocky is derived from Red Hat Enterprise Linux, RHEL and uses the yum installer).

Run the playbook using:

```
ansible-playbook playbook-all-apache.yml -i inventory.ini
```

The playbook should install apache on all of the servers including the `ansible_controller` which can be reached at 
[http://192.168.56.10/examplewebpage.html](http://192.168.56.10/examplewebpage.html)

Have a look at the output to understand the order in which the roles and tasks are performed against the servers in the inventory.

