# example 6.2

In this example we are going to use a pre-built official release of apache.

Prebuilt images avoid having to create our own Dockerfile and give a consistent configuration.

In this case we are using [ubuntu/apache2/2.4-26.04_edge/](https://hub.docker.com/layers/ubuntu/apache2/2.4-26.04_edge/)
which offers apache installed upon an Ubuntu base image.

The [docker-compose.yaml](./docker-compose.yaml) file has the following contents:

```
---
services:

  apache-1:
    # this image version defaults to latest if not specified in the .env file
    image: ubuntu/apache2:${APACHE_IMAGE_VERSION:-latest}
    container_name: apache-1
    ports:
      - "8081:80"
    volumes:
      - ./container-fs/apache2/html:/var/www/html
    restart: unless-stopped
    
  apache-2:
    image: ubuntu/apache2:${APACHE_IMAGE_VERSION:-latest}
    container_name: apache-2
    ports:
      - "8082:80"
    volumes:
      - ./container-fs/apache2/html:/var/www/html
    restart: unless-stopped

```

The line `image: ubuntu/apache2:${APACHE_IMAGE_VERSION:-latest} ` substitutes a variable in the `.env` file for the line in the docker compose file.
This allows us to specify variables once and use them in several places.

The volumes definition allows us to specify folders or specific files in our host system to inject into the container. 

```
    volumes:
      - ./container-fs/apache2/html:/var/www/html:ro
```

Everything in the folder `./container-fs/apache2/html` will be injected into the place where apache serves web pages.
Note that the `:ro` suffix means read only. i.e the container cannot change this file on the host system.

## run this example. 

(make sure you have shut down other example first to avoid port clashes)

```
cd example6-2

docker compose up -d
```

You should now be able to browse to the injected page:
* [http://localhost:8081/examplewebpage.html](http://localhost:8081/examplewebpage.html)
* [http://localhost:8082/examplewebpage.html](http://localhost:8082/examplewebpage.html)

Shut down the example once you have finished

