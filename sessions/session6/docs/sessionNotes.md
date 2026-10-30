[Main Menu](../../../sessions/README.md) |[session6](../../session6/) | [Session 6 Notes](../docs/sessionNotes.md)

# Session 6 Notes - Docker orchestration with docker compose

In session 5, we saw how to install and run docker containers using the docker command line interface.
In most situations, however, we need to install several components and have them work together to delver a production application.

[Docker Compose](https://docs.docker.com/compose/) has proven to be a widely used solution for specifying how containers are to be run in a common application. 
In many scenarios, `Docker Compose` is all that is needed to spin up a local lab or run a system in production. 

In larger cloud based systems, [Kubernetes](https://kubernetes.io/) is often the preferred choice but this can be overkill for most smaller apps.

In fact until recently, you were encouraged by the cloud providers to deploy smaller container applications directly using docker compose files and this is still possible.

`Docker Compose` has now unfortunately been deprecated in the cloud in favour of `Kubernetes` or proprietary cloud container services but `Docker Compose` remains a strong contender for developing and testing applications locally and can also act as an orchestrator in small production environments.

I have provided some details below of cloud container services for interest - but this is more complicated than we need and beyond the scope of this module.

Amazon Elastic Container Service (ECS)
* [Migrate from Docker Compose to ECS](https://oneuptime.com/blog/post/2026-02-12-migrate-docker-compose-ecs-task-definitions/view)
* [How to Use Docker Compose with ECS](https://oneuptime.com/blog/post/2026-02-12-docker-compose-with-ecs/view#when-to-use-compose-vs-native-ecs)

Azure (Microsoft) 
* [Deployment of multiple Containers in Azure as Container Instance using Docker Compose](https://www.patrickkoch.dev/posts/post_20/)

In summary, `Docker Compose` remains a very good way to spin up containerised applications locally in development and in small production environments.
It can also act as a stepping stone into more complex container orchestration frameworks in the cloud.
We are going to use it to help us learn more about containers in a lab environment.

---
**Exercise 6.1**

Go through the exercises in  [docker-compose-examples](../docker-compose-examples).
Make sure you can explain 
* Using docker compose to build an image
* Using a pre-built image
* Injecting external files and folders from the guest into an image
* Using environment variables to inject values into a `docker-compose.yml` file
* Building more complex examples using multiple containers and networks
---

---
**Exercise 6.2**

There are many example docker compose projects on github and a number of tutorials.
See if you can run some of the examples in docker's own repository [awesome-compose](https://github.com/docker/awesome-compose)
Pick one or two examples from this repository and try and run them locally.

Make sure you can explain 
* What each example does
* How each example works
* How you might use it if you think it is useful
---



