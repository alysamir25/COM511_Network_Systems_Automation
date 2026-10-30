# example 6-1

This docker compose example performs the same process as the steps to create a docker image in exercise5-1

The [docker-compose.yaml](./docker-compose.yaml) file has the following contents:

```
services:
  apache-1:
    build:
      context: /container-fs/apache2      # Looks for your local Dockerfile
    image: my-apache2                     # Assigns this exact name to the built image
    container_name: apache-1
    ports:
      - "8081:80"
    restart: unless-stopped
    
  apache-2:
    image: my-apache2                     # uses the image you built in the previous step
    container_name: apache-2
    ports:
      - "8082:80"
    restart: unless-stopped
```

You will see that two containers or services are defined, one mapped to port `8081`, and the other to port `8082`

The first service `apache-1` can build the `my-apache2` image using the Dockerfile in `/container-fs/apache2`
This Dockerfile is identical to the one used in the previous example.

The second service `apache-2` simply uses the latest build of the `my-apache2` image.

To run this example first make sure `docker desktop` is running then use:

```
cd example6-1

# this will build the image
docker compose build

# this will run two instances of the image.
# note that docker compose up would also build an image if it did not exist locally
# the -d option makes both containers daemons and control return to the command prompt
docker compose up -d
```
To see the containers running use

```
docker compose ps
```
To see logs from within a container use `docker compose logs -f <container name>`

```
docker compose logs -f apache-1
```

To shutdown the example use

```
docker compose down
```
