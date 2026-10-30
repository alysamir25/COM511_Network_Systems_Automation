# start with the official apache base image
FROM ubuntu:22.04

# Install apache2
RUN apt-get update && apt-get install -y apache2

# expose port 80 on the container for the web server
EXPOSE 80

# start apache in the foreground when the container starts
CMD ["apachectl", "-D", "FOREGROUND"]

