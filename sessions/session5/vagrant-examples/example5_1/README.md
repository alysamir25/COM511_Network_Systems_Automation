
## Installing Docker on Linux

Docker is reasonably easy to install on linux distributions

This vagrant project installs ansible and docker in a machine for you to play with

(This example is based on [How to install Docker on Ubuntu 22.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04) ).

You should be able to ssh into the vagrant account and repeat all of the exercises previously done with `Docker Desktop` (with a few modifications)

The machine will be visible to and can be pinged from your host at `192.168.56.10`

You can do the exercise to build and run your apache docker image using

```
cd example5-1
vagrant up

vagrant ssh

# once logged into the machine

cd /vagrant/docker-examples/docker-apache

docker build -t my-apache .

docker run -d -p 8081:80 --name apache-1 my-apache

# check the container is running using
docker ps

```

In this case, the container's port 80 is now mapped to the virtual machine's port 8081.

From the host, you should be able to see the apache home page at [http://192.168.56.10:8081/](http://192.168.56.10:8081/)

When you have finished clean up the machine

```
docker kill apache-1
docker rm apache-1
```

