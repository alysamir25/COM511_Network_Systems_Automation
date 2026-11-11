Windows PowerShell 5.1
Copyright (C) Microsoft Corporation. All rights reserved.

================================ Example6-1 ================================

```
PS C:\Users\Admin> cd "C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-1"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-1> docker compose build
[+] Building 4.4s (8/8) FINISHED
 => [internal] load local bake definitions                             0.0s
 => => reading from stdin 750B                                         0.0s
 => [internal] load build definition from Dockerfile                   0.3s
 => => transferring dockerfile: 344B                                   0.2s
 => [internal] load metadata for docker.io/library/ubuntu:22.04        0.3s
 => [internal] load .dockerignore                                      0.9s
 => => transferring context: 2B                                        0.0s
 => [1/2] FROM docker.io/library/ubuntu:22.04@sha256:e0f80c829509ef4d  0.1s
 => => resolve docker.io/library/ubuntu:22.04@sha256:e0f80c829509ef4d  0.1s
 => CACHED [2/2] RUN apt-get update && apt-get install -y apache2      0.0s
 => exporting to image                                                 0.6s
 => => exporting layers                                                0.0s
 => => exporting manifest sha256:01e1976aa57b9cd14e8e5b62626b72918761  0.0s
 => => exporting config sha256:4a469390579d84660237b7108516ccb2a1f22c  0.0s
 => => exporting attestation manifest sha256:0220c2de870dfb402a108d26  0.2s
 => => exporting manifest list sha256:377ba242bf2741ea6d19b0c11cbd717  0.2s
 => => naming to docker.io/library/my-apache2:latest                   0.0s
 => => unpacking to docker.io/library/my-apache2:latest                0.0s
 => resolving provenance for metadata file                             0.1s
[+] build 1/1
 ✔ Image my-apache2 Built                                               5.0s
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-1> docker compose up -d
[+] up 3/3
 ✔ Network example6-1_default Created                                   0.1s
 ✔ Container apache-2         Started                                   1.6s
 ✔ Container apache-1         Started                                   1.0s
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-1> docker compose ps
NAME       IMAGE        COMMAND                  SERVICE    CREATED          STATUS     PORTS
apache-1   my-apache2   "apachectl -D FOREGR…"   apache-1   12 seconds ago   Up 11 seconds   0.0.0.0:8081->80/tcp, [::]:8081->80/tcp
apache-2   my-apache2   "apachectl -D FOREGR…"   apache-2   12 seconds ago   Up 11 seconds   0.0.0.0:8082->80/tcp, [::]:8082->80/tcp
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-1> docker compose logs -f apache-1

apache-1  | AH00558: apache2: Could not reliably determine the server's fully qualifieddomain name, using 172.24.0.2. Set the 'ServerName' directive globally to suppress thismessage
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-1> curl.exe -I http://localhost:8081
HTTP/1.1 200 OK
Date: Tue, 03 Nov 2026 20:43:24 GMT
Server: Apache/2.4.52 (Ubuntu)
Last-Modified: Wed, 28 Oct 2026 12:01:43 GMT
ETag: "29af-65ee5539417c0"
Accept-Ranges: bytes
Content-Length: 10671
Vary: Accept-Encoding
Content-Type: text/html
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-1> docker compose logs -f apache-2
apache-2  | AH00558: apache2: Could not reliably determine the server's fully qualifieddomain name, using 172.24.0.3. Set the 'ServerName' directive globally to suppress thismessage
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-1> curl.exe -I http://localhost:8082
HTTP/1.1 200 OK
Date: Tue, 03 Nov 2026 20:43:57 GMT
Server: Apache/2.4.52 (Ubuntu)
Last-Modified: Wed, 28 Oct 2026 12:01:43 GMT
ETag: "29af-65ee5539417c0"
Accept-Ranges: bytes
Content-Length: 10671
Vary: Accept-Encoding
Content-Type: text/html
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-1> docker compose down
[+] down 3/3
 ✔ Container apache-2         Removed                                   3.6s
 ✔ Container apache-1         Removed                                   3.8s
 ✔ Network example6-1_default Removed                                   0.4s
```

================================ Example6-2 ================================

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-1> cd ..
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples> cd .\example6-2\
```
```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-2> ddocker compose up -d
[+] up 11/11
 ✔ Image ubuntu/apache2:latest         Pulled                           17.9s
 ✔ Image ubuntu/apache2:2.4-26.04_edge Pulled                           13.0s
 ✔ Network example6-2_default          Created                           0.3s
 ✔ Container apache-2                  Started                           8.6s
 ✔ Container apache-1                  Started                           7.6s
 ```
 
 ```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-2> docker compose down
[+] down 3/3
 ✔ Container apache-2         Removed                                    3.5s
 ✔ Container apache-1         Removed                                    0.6s
 ✔ Network example6-2_default Removed                                    0.3s
```

================================ Example6-3 ================================

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-2> cd ..
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples> cd .\example6-3\
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-3> docker compose up -d
[+] up 60/61
 ✔ Image wordpress:cli        Pulled                                    18.5s
 ✔ Image wordpress:latest     Pulled                                    66.2s
 ✔ Image mariadb:10.6.4-focal Pulled                                    21.3s
 ✘ Network example6-3_N000    Error Error response from daemon: inv...   0.1s
 ✔ Volume example6-3_wp_data  Created                                    0.0s
 ✔ Volume example6-3_db_data  Created                                    0.0s
 ✘ network:N000               failed to create network example6-3_N0...  0.0s
 - Container db               Creating                                   0.0s
failed to create network example6-3_N000: Error response from daemon: invalid pool request: Pool overlaps with other one on this address space

What's next:
    Debug this Compose error with Gordon → docker ai "help me fix this compose error"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-3> docker network ls
NETWORK ID     NAME                          DRIVER    SCOPE
49c9da961d1b   ai-security-scanner_default   bridge    local
b9f018d3250a   autonoryx_default             bridge    local
dba32fe648d7   bridge                        bridge    local
c9b3567e0b67   discovery-engine_default      bridge    local
da0a5db35d46   host                          host      local
a09c987dd082   killswitch_default            bridge    local
8f6d2ad7201d   klyvanta_default              bridge    local
4ab79be331b0   none                          null      local
0b2cd918a557   solv-test                     bridge    local
61eef715941e   solvantra-app_default         bridge    local
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-3> docker network inspect $(docker network ls -q) --format '{{.Name}} - {{range .IPAM.Config}}{{.Subnet}}{{end}}'

ai-security-scanner_default - 172.18.0.0/16
autonoryx_default - 172.20.0.0/16
bridge - 172.17.0.0/16
discovery-engine_default - 172.21.0.0/16
host -
killswitch_default - 172.22.0.0/16
klyvanta_default - 172.19.0.0/16
none -
solv-test - 172.23.0.0/16
solvantra-app_default - 172.25.0.0/16
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-3> Get-Content docker-compose.yaml
---


# using fixed ip addresses so opennms provisoning config works
# to see all network use docker network ls
# to see config use docker network inspect minimal-minion-activemq_N000
# note gateway is 172.20.0.1
networks:
  N000:
    ipam:
      config:
        - subnet: 172.20.0.0/24

volumes:
  db_data: {} # data for mariadb / wordpress
  wp_data: {} # data for wordpress

services:

  ###########################################
  # wordpress example
  ###########################################

  # word press example modified from
  # https://github.com/docker/awesome-compose/tree/master/wordpress-mysql

  # test wordpress mysql/mariadb database
  db:
    # We use a mariadb image which supports both amd64 & arm64 architecture
    image: mariadb:10.6.4-focal
    # If you really want to use MySQL, uncomment the following line
    #image: mysql:8.0.27
    container_name: db
    hostname: db
    command: '--default-authentication-plugin=mysql_native_password'
    volumes:
      - db_data:/var/lib/mysql
    restart: always
    environment:
      - MYSQL_ROOT_PASSWORD=somewordpress
      - MYSQL_DATABASE=wordpress
      - MYSQL_USER=wordpress
      - MYSQL_PASSWORD=wordpress
    expose:
      - 3306
      - 33060
    networks:
      N000:
        ipv4_address: 172.20.0.70

  # word press cli used to set up the word press site we are monitoring without manual intervention
  # see https://stackoverflow.com/questions/50999848/how-to-run-wp-cli-in-docker-compose-yml
  wordpress-cli:
    depends_on:
      - db
      - wordpress1
    image: wordpress:cli
    container_name: wordpress-cli
    hostname: wordpress-cli
    # vstm: This is required to run wordpress-cli with the same
    # user-id as wordpress. This way there are no permission problems
    # when running the cli
    user: '33'
    # vstm: The sleep 20 is required so that the command is run after
    # mysql is initialized. Depending on your machine this might take
    # longer or it can go faster.
    # note path must match working_dir and must match the url root of wordpress installation
    command: >
      /bin/sh -c '
      sleep 20;
      wp core install --path="/var/www/html/wordpress" --url="http://localhost:8011/wordpress" --title="Simple Local Wordpress By Docker" --admin_user=admin --admin_password=secret --admin_email=foo@bar.com
      '
    # vstm: add shared volume
    volumes:
      - wp_data:/var/www/html
    # WP CLI needs the environment variables used for the Wordpress image
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_NAME: wordpress
      WORDPRESS_DB_USER: wordpress
      WORDPRESS_DB_PASSWORD: wordpress
      WORDPRESS_TABLE_PREFIX: "wp_"
    networks:
      N000:
        ipv4_address: 172.20.0.80

  # wordpress server 1
  wordpress1:
    depends_on:
      - db
    image: wordpress:latest
    container_name: wordpress1
    hostname: wordpress1
    ports:
      - 8011:80
    restart: unless-stopped
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_NAME: wordpress
      WORDPRESS_DB_USER: wordpress
      WORDPRESS_DB_PASSWORD: wordpress
      WORDPRESS_TABLE_PREFIX: "wp_"
      WORDPRESS_DEBUG: 1
    # note working dir must match the url root of wordpress installation
    working_dir: /var/www/html/wordpress
    # vstm: add shared volume
    volumes:
      - wp_data:/var/www/html
    networks:
      N000:
        ipv4_address: 172.20.0.81

```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-3> Get-Content docker-compose.yaml
---


# using fixed ip addresses so opennms provisoning config works
# to see all network use docker network ls
# to see config use docker network inspect minimal-minion-activemq_N000
# note gateway is 172.20.0.1
networks:
  N000:
    ipam:
      config:
        - subnet: 172.26.0.0/24

volumes:
  db_data: {} # data for mariadb / wordpress
  wp_data: {} # data for wordpress

services:

  ###########################################
  # wordpress example
  ###########################################

  # word press example modified from
  # https://github.com/docker/awesome-compose/tree/master/wordpress-mysql

  # test wordpress mysql/mariadb database
  db:
    # We use a mariadb image which supports both amd64 & arm64 architecture
    image: mariadb:10.6.4-focal
    # If you really want to use MySQL, uncomment the following line
    #image: mysql:8.0.27
    container_name: db
    hostname: db
    command: '--default-authentication-plugin=mysql_native_password'
    volumes:
      - db_data:/var/lib/mysql
    restart: always
    environment:
      - MYSQL_ROOT_PASSWORD=somewordpress
      - MYSQL_DATABASE=wordpress
      - MYSQL_USER=wordpress
      - MYSQL_PASSWORD=wordpress
    expose:
      - 3306
      - 33060
    networks:
      N000:
        ipv4_address: 172.26.0.70

  # word press cli used to set up the word press site we are monitoring without manual intervention
  # see https://stackoverflow.com/questions/50999848/how-to-run-wp-cli-in-docker-compose-yml
  wordpress-cli:
    depends_on:
      - db
      - wordpress1
    image: wordpress:cli
    container_name: wordpress-cli
    hostname: wordpress-cli
    # vstm: This is required to run wordpress-cli with the same
    # user-id as wordpress. This way there are no permission problems
    # when running the cli
    user: '33'
    # vstm: The sleep 20 is required so that the command is run after
    # mysql is initialized. Depending on your machine this might take
    # longer or it can go faster.
    # note path must match working_dir and must match the url root of wordpress installation
    command: >
      /bin/sh -c '
      sleep 20;
      wp core install --path="/var/www/html/wordpress" --url="http://localhost:8011/wordpress" --title="Simple Local Wordpress By Docker" --admin_user=admin --admin_password=secret --admin_email=foo@bar.com
      '
    # vstm: add shared volume
    volumes:
      - wp_data:/var/www/html
    # WP CLI needs the environment variables used for the Wordpress image
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_NAME: wordpress
      WORDPRESS_DB_USER: wordpress
      WORDPRESS_DB_PASSWORD: wordpress
      WORDPRESS_TABLE_PREFIX: "wp_"
    networks:
      N000:
        ipv4_address: 172.26.0.80

  # wordpress server 1
  wordpress1:
    depends_on:
      - db
    image: wordpress:latest
    container_name: wordpress1
    hostname: wordpress1
    ports:
      - 8011:80
    restart: unless-stopped
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_NAME: wordpress
      WORDPRESS_DB_USER: wordpress
      WORDPRESS_DB_PASSWORD: wordpress
      WORDPRESS_TABLE_PREFIX: "wp_"
      WORDPRESS_DEBUG: 1
    # note working dir must match the url root of wordpress installation
    working_dir: /var/www/html/wordpress
    # vstm: add shared volume
    volumes:
      - wp_data:/var/www/html
    networks:
      N000:
        ipv4_address: 172.26.0.81

```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-3> docker compose config
name: example6-3
services:
  db:
    restart: always
    container_name: db
    command:
      - --default-authentication-plugin=mysql_native_password
    environment:
      MYSQL_DATABASE: wordpress
      MYSQL_PASSWORD: wordpress
      MYSQL_ROOT_PASSWORD: somewordpress
      MYSQL_USER: wordpress
    hostname: db
    image: mariadb:10.6.4-focal
    networks:
      N000:
        ipv4_address: 172.26.0.70
    volumes:
      - type: volume
        source: db_data
        target: /var/lib/mysql
        volume: {}
    expose:
      - "3306"
      - "33060"
  wordpress-cli:
    container_name: wordpress-cli
    command:
      - /bin/sh
      - -c
      - ' sleep 20; wp core install --path="/var/www/html/wordpress" --url="http://localhost:8011/wordpress"
        --title="Simple Local Wordpress By Docker" --admin_user=admin --admin_password=secret
        --admin_email=foo@bar.com '
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_NAME: wordpress
      WORDPRESS_DB_PASSWORD: wordpress
      WORDPRESS_DB_USER: wordpress
      WORDPRESS_TABLE_PREFIX: wp_
    hostname: wordpress-cli
    image: wordpress:cli
    networks:
      N000:
        ipv4_address: 172.26.0.80
    user: "33"
    volumes:
      - type: volume
        source: wp_data
        target: /var/www/html
        volume: {}
    depends_on:
      db:
        condition: service_started
        required: true
      wordpress1:
        condition: service_started
        required: true
  wordpress1:
    restart: unless-stopped
    container_name: wordpress1
    environment:
      WORDPRESS_DB_HOST: db:3306
      WORDPRESS_DB_NAME: wordpress
      WORDPRESS_DB_PASSWORD: wordpress
      WORDPRESS_DB_USER: wordpress
      WORDPRESS_DEBUG: "1"
      WORDPRESS_TABLE_PREFIX: wp_
    hostname: wordpress1
    image: wordpress:latest
    networks:
      N000:
        ipv4_address: 172.26.0.81
    volumes:
      - type: volume
        source: wp_data
        target: /var/www/html
        volume: {}
    working_dir: /var/www/html/wordpress
    depends_on:
      db:
        condition: service_started
        required: true
    ports:
      - mode: ingress
        target: 80
        published: "8011"
        protocol: tcp
networks:
  N000:
    name: example6-3_N000
    ipam:
      config:
        - subnet: 172.26.0.0/24
volumes:
  db_data:
    name: example6-3_db_data
  wp_data:
    name: example6-3_wp_data
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-3> docker compose up -d
[+] up 4/4
 ✔ Network example6-3_N000 Created                                                  0.1s
 ✔ Container db            Started                                                  1.1s
 ✔ Container wordpress1    Started                                                  1.3s
 ✔ Container wordpress-cli Started                                                  1.4s
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-3> docker compose exec wordpress1 bash
root@wordpress1:/var/www/html/wordpress# docker compose logs -f wordpress1
bash: docker: command not found
root@wordpress1:/var/www/html/wordpress# exit
exit

What's next:
    Debug this Compose error with Gordon → docker ai "help me fix this compose error"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-3> docker compose logs -f wordpress1
wordpress1  | WordPress not found in /var/www/html/wordpress - copying now...
wordpress1  | Complete! WordPress has been successfully copied to /var/www/html/wordpress
wordpress1  | No 'wp-config.php' found in /var/www/html/wordpress, but 'WORDPRESS_...' variables supplied; copying 'wp-config-docker.php' (WORDPRESS_DB_HOST WORDPRESS_DB_NAME WORDPRESS_DB_PASSWORD WORDPRESS_DB_USER WORDPRESS_DEBUG WORDPRESS_TABLE_PREFIX)
wordpress1  | AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.26.0.81. Set the 'ServerName' directive globally to suppress this message
wordpress1  | AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.26.0.81. Set the 'ServerName' directive globally to suppress this message
wordpress1  | [Tue Nov 03 22:07:26.811931 2026] [mpm_prefork:notice] [pid 1:tid 1] AH00163: Apache/2.4.69 (Debian) PHP/8.3.36 configured -- resuming normal operations
wordpress1  | [Tue Nov 03 22:07:26.812101 2026] [core:notice] [pid 1:tid 1] AH00094: Command line: 'apache2 -D FOREGROUND'
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:40 +0000] "GET /wordpress/ HTTP/1.1" 302 434 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:40 +0000] "GET /wordpress/wp-admin/install.php HTTP/1.1" 200 4794 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /wordpress/wp-includes/css/buttons.min.css?ver=7.1.4 HTTP/1.1" 200 1996 "http://localhost:8011/wordpress/wp-admin/install.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /wordpress/wp-includes/css/dashicons.min.css?ver=7.1.4 HTTP/1.1" 200 36059 "http://localhost:8011/wordpress/wp-admin/install.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /wordpress/wp-includes/css/dist/base-styles/admin-schemes.min.css?ver=7.1.4 HTTP/1.1" 200 1133 "http://localhost:8011/wordpress/wp-admin/install.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /wordpress/wp-admin/css/forms.min.css?ver=7.1.4 HTTP/1.1" 200 7186 "http://localhost:8011/wordpress/wp-admin/install.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /wordpress/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.1 HTTP/1.1" 200 5216 "http://localhost:8011/wordpress/wp-admin/install.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36(KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /wordpress/wp-admin/css/l10n.min.css?ver=7.1.4 HTTP/1.1" 200 1103 "http://localhost:8011/wordpress/wp-admin/install.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /wordpress/wp-admin/js/language-chooser.min.js?ver=7.1.4 HTTP/1.1" 200 615 "http://localhost:8011/wordpress/wp-admin/install.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /wordpress/wp-admin/css/install.min.css?ver=7.1.4 HTTP/1.1" 200 2191 "http://localhost:8011/wordpress/wp-admin/install.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /wordpress/wp-includes/js/jquery/jquery.min.js?ver=3.7.1 HTTP/1.1" 200 30715 "http://localhost:8011/wordpress/wp-admin/install.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /wordpress/wp-admin/images/wordpress-logo-gray.svg?ver=20260303 HTTP/1.1" 200 1810 "http://localhost:8011/wordpress/wp-admin/css/install.min.css?ver=7.1.4" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /wordpress/wp-admin/images/spinner-2x.gif HTTP/1.1" 200 7822 "http://localhost:8011/wordpress/wp-admin/css/install.min.css?ver=7.1.4" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:07:42 +0000] "GET /favicon.ico HTTP/1.1" 404 529 "http://localhost:8011/wordpress/wp-admin/install.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 127.0.0.1 - - [03/Nov/2026:22:07:47 +0000] "OPTIONS * HTTP/1.0" 200 126 "-" "Apache/2.4.69 (Debian) PHP/8.3.36 (internal dummy connection)"
wordpress1  | 127.0.0.1 - - [03/Nov/2026:22:07:48 +0000] "OPTIONS * HTTP/1.0" 200 126 "-" "Apache/2.4.69 (Debian) PHP/8.3.36 (internal dummy connection)"
wordpress1  | 127.0.0.1 - - [03/Nov/2026:22:07:49 +0000] "OPTIONS * HTTP/1.0" 200 126 "-" "Apache/2.4.69 (Debian) PHP/8.3.36 (internal dummy connection)"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:05 +0000] "POST /wordpress/wp-admin/install.php?step=1 HTTP/1.1" 200 935 "http://localhost:8011/wordpress/wp-admin/install.php""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-login.php HTTP/1.1" 200 2767 "http://localhost:8011/wordpress/wp-admin/install.php?step=1" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,buttons,forms,l10n,wp-base-styles,wp-tooltip,login&ver=7.1.4 HTTP/1.1" 200 48053 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-admin/js/password-strength-meter.min.js?ver=7.1.4 HTTP/1.1" 200 964 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-includes/js/dist/dom-ready.min.js?ver=3fe927cab37bf38d6a23 HTTP/1.1" 200 840 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-includes/js/dist/i18n.min.js?ver=1dfe7db3940c23ea9216 HTTP/1.1" 200 2837 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-includes/js/dist/a11y.min.js?ver=31c6cec5a4ff7aff483d HTTP/1.1" 200 1432 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-admin/js/user-profile.min.js?ver=7.1.4 HTTP/1.1" 200 3456 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-includes/js/wp-tooltip.js?ver=7.1.4 HTTP/1.1" 200 1142 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-includes/js/underscore.min.js?ver=1.13.8 HTTP/1.1" 200 7717 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-includes/js/wp-util.min.js?ver=7.1.4 HTTP/1.1" 200 1097 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=clipboard,jquery-core,jquery-migrate,zxcvbn-async,wp-hooks&ver=7.1.4 HTTP/1.1" 200 39344 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:22 +0000] "GET /wordpress/wp-includes/js/zxcvbn.min.js HTTP/1.1" 200 400393 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 127.0.0.1 - - [03/Nov/2026:22:08:27 +0000] "OPTIONS * HTTP/1.0" 200 126 "-" "Apache/2.4.69 (Debian) PHP/8.3.36 (internal dummy connection)"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:45 +0000] "POST /wordpress/wp-login.phpHTTP/1.1" 302 1319 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (WindowsNT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:45 +0000] "GET /wordpress/wp-admin/ HTTP/1.1" 200 22619 "http://localhost:8011/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/thickbox/thickbox.css?ver=7.1.4 HTTP/1.1" 200 1273 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/js/common.min.js?ver=7.1.4 HTTP/1.1" 200 8879 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/css/colors/modern/colors.min.css?ver=7.1.4 HTTP/1.1" 200 3645 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/css/editor.min.css?ver=7.1.4 HTTP/1.1" 200 6343 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=hoverIntent,wp-dom-ready,wp-hooks&ver=7.1.4 HTTP/1.1"200 3126 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/hoverintent-js.min.js?ver=2.2.1 HTTP/1.1" 200 1060 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/admin-bar.min.js?ver=7.1.4 HTTP/1.1" 200 1700 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=jquery-core,jquery-migrate,utils&ver=7.1.4 HTTP/1.1" 200 35485 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/clipboard.min.js?ver=2.0.11 HTTP/1.1" 200 3494 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/api-request.min.js?ver=7.1.4 HTTP/1.1" 200 932 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/js/site-health.min.js?ver=7.1.4 HTTP/1.1" 200 2599 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/url.min.js?ver=7b0de086d4ae11d55704 HTTP/1.1" 200 4281 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,admin-bar,site-health,common,forms,admin-menu,dashboard,list-tables,edit,revisions,media,themes,about,nav-menus,wp-poi&load%5Bchunk_1%5D=nter,widgets,site-icon,l10n,wp-base-styles,wp-tooltip,buttons,wp-auth-check,wp-theme,wp-components,wp-commands&ver=7.1.4 HTTP/1.1" 200 123736 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/wp-ajax-response.min.js?ver=7.1.4 HTTP/1.1" 200 1477 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/wp-lists.min.js?ver=7.1.4 HTTP/1.1" 200 2878 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/jquery/jquery.color.min.js?ver=3.0.0 HTTP/1.1" 200 3068 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/jquery/jquery.query.js?ver=2.2.3 HTTP/1.1" 200 1970 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/quicktags.min.js?ver=7.1.4 HTTP/1.1" 200 3853 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/jquery/ui/core.min.js?ver=1.14.2 HTTP/1.1" 200 6856 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/js/edit-comments.min.js?ver=7.1.4 HTTP/1.1" 200 5528 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/jquery/ui/mouse.min.js?ver=1.14.2 HTTP/1.1" 200 1395 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/js/postbox.min.js?ver=7.1.4 HTTP/1.1" 200 2580 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/jquery/ui/sortable.min.js?ver=1.14.2 HTTP/1.1" 200 6884 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/vendor/moment.min.js?ver=2.30.1 HTTP/1.1" 200 19099 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/deprecated.min.js?ver=fe587bac92b7d0ef760e HTTP/1.1" 200 1105 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/js/plugin-install.min.js?ver=7.1.4 HTTP/1.1" 200 1364 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/js/dashboard.min.js?ver=7.1.4 HTTP/1.1" 200 3410 "http://localhost:8011/wordpress/wp-admin/""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/thickbox/thickbox.js?ver=3.1-20121105 HTTP/1.1" 200 4376 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/date.min.js?ver=8173fc0fc12b7bb7eaf0 HTTP/1.1" 200 24419 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/wp-sanitize.min.js?ver=7.1.4 HTTP/1.1" 200 613 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/js/media-upload.min.js?ver=7.1.4 HTTP/1.1" 200 955 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/shortcode.min.js?ver=7.1.4 HTTP/1.1" 200 1488 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/js/svg-painter.js?ver=7.1.4 HTTP/1.1" 200 1561 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-admin/js/updates.min.js?ver=7.1.4 HTTP/1.1" 200 10778 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/heartbeat.min.js?ver=7.1.4 HTTP/1.1" 200 2385 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/wp-auth-check.min.js?ver=7.1.4 HTTP/1.1" 200 1124 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/vendor/react-jsx-runtime.min.js?ver=18.3.1 HTTP/1.1" 200 1006 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/vendor/react.min.js?ver=18.3.1.1 HTTP/1.1" 200 4607 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/dom.min.js?ver=c95f94cbbc1ac3fde84f HTTP/1.1" 200 5452 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/vendor/react-dom.min.js?ver=18.3.1.1 HTTP/1.1" 200 43340 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/escape-html.min.js?ver=87ebe53e97bba59805a5 HTTP/1.1" 200 955 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/is-shallow-equal.min.js?ver=7ad271045c1fe60f5496 HTTP/1.1" 200 938 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/element.min.js?ver=4a4370b2b349066fd440 HTTP/1.1" 200 5557 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/priority-queue.min.js?ver=6c0aa59b65d55dfd509b HTTP/1.1" 200 1969 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/keycodes.min.js?ver=d0b4204e4bbeb412df6e HTTP/1.1" 200 1924 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/undo-manager.min.js?ver=4554fce6276d8910a4ae HTTP/1.1" 200 1284 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36(KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/private-apis.min.js?ver=eb85f28c4c729bb4f002 HTTP/1.1" 200 1513 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36(KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/primitives.min.js?ver=44cc5a35c7b9fe07a838 HTTP/1.1" 200 1376 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/html-entities.min.js?ver=a976ff3a0f00bc2999a3 HTTP/1.1" 200 863 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36(KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/redux-routine.min.js?ver=acca2b4857d83ad1790e HTTP/1.1" 200 3729 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/compose.min.js?ver=0e8bde2a499ea6073b42 HTTP/1.1" 200 11929 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/warning.min.js?ver=a0978839debc564a6608 HTTP/1.1" 200 816 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/data.min.js?ver=14a216e0932d72c22976 HTTP/1.1" 200 10097 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/keyboard-shortcuts.min.js?ver=37da95806f2339bc80d0 HTTP/1.1" 200 1979 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/rich-text.min.js?ver=3e5852e42cee1c239bae HTTP/1.1" 200 15219 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/theme.min.js?ver=56a75cc08ae66c1fcb7a HTTP/1.1" 200 22915 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/preferences-persistence.min.js?ver=a34abbdacd8f50f9acb1 HTTP/1.1" 200 2519 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/api-fetch.min.js?ver=6f2a4faeee3c722b1e57 HTTP/1.1" 200 3685 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/blob.min.js?ver=c7582a735ddd2edc9731 HTTP/1.1" 200 996 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/preferences.min.js?ver=5a169e3fc0e657f74172 HTTP/1.1" 200 3690 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/commands.min.js?ver=1a4910212c7ed2355300 HTTP/1.1" 200 20189 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/autop.min.js?ver=4e10a18cb6f21a043fc0 HTTP/1.1" 200 2532 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/notices.min.js?ver=c09a068fdab0eb465e14 HTTP/1.1" 200 2059 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/shortcode.min.js?ver=f6273476300cc5fad4cd HTTP/1.1" 200 1940 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/block-serialization-default-parser.min.js?ver=fc209395a022242d64aa HTTP/1.1" 200 1541 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/blocks.min.js?ver=c0e57a630a0b6f6c3bb5 HTTP/1.1" 200 45435 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/token-list.min.js?ver=e86ab419d8302d57822c HTTP/1.1" 200 1105 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/style-engine.min.js?ver=914befb08774033e6265 HTTP/1.1" 200 2834 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36(KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/upload-media.min.js?ver=a2c026d433c295fd5145 HTTP/1.1" 200 16761 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/router.min.js?ver=dda75cd9ff9d7e0eb19f HTTP/1.1" 200 6319 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/wplink.min.js?ver=7.1.4 HTTP/1.1" 200 4241 "http://localhost:8011/wordpress/wp-admin/""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/core-commands.min.js?ver=426a33508599b7f31db3 HTTP/1.1" 200 4660 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/components.min.js?ver=9b751f17060211272a5c HTTP/1.1" 200 272147 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36(KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/jquery/ui/menu.min.js?ver=1.14.2 HTTP/1.1" 200 3387 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/jquery/ui/autocomplete.min.js?ver=1.14.2 HTTP/1.1" 200 3158 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/core-data.min.js?ver=573f98dbff9f49ffeb0b HTTP/1.1" 200 73211 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/wp-includes/js/dist/block-editor.min.js?ver=37e58da384b2558bd479 HTTP/1.1" 200 428096 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:48 +0000] "GET /wordpress/index.php?rest_route=%2Fwp%2Fv2%2Fusers%2Fme&context=edit&_locale=user HTTP/1.1" 200 3120 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:49 +0000] "GET /wordpress/wp-admin/admin-ajax.php?action=wp-compression-test&test=1&_ajax_nonce=ae05d5e1a7&1793743729077 HTTP/1.1" 200 1188 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:49 +0000] "GET /wordpress/wp-includes/js/thickbox/loadingAnimation.gif HTTP/1.1" 200 15525 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:49 +0000] "GET /wordpress/wp-admin/admin-ajax.php?action=wp-compression-test&test=no&_ajax_nonce=ae05d5e1a7&1793743729147 HTTP/1.1" 200 539 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:49 +0000] "GET /wordpress/wp-includes/js/wp-emoji-release.min.js?ver=7.1.4 HTTP/1.1" 200 5730 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:49 +0000] "POST /wordpress/wp-admin/admin-ajax.php HTTP/1.1" 200 1826 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:08:49 +0000] "GET /wordpress/wp-admin/admin-ajax.php?action=dashboard-widgets&widget=dashboard_primary&pagenow=dashboard HTTP/1.1"200 941 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 127.0.0.1 - - [03/Nov/2026:22:08:56 +0000] "OPTIONS * HTTP/1.0" 200 126 "-" "Apache/2.4.69 (Debian) PHP/8.3.36 (internal dummy connection)"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:09:49 +0000] "POST /wordpress/wp-admin/admin-ajax.php HTTP/1.1" 200 581 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:11:49 +0000] "POST /wordpress/wp-admin/admin-ajax.php HTTP/1.1" 200 581 "http://localhost:8011/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-3> docker compose down
[+] down 4/4
 ✔ Container wordpress-cli Removed                                                  0.0s
 ✔ Container wordpress1    Removed                                                  1.5s
 ✔ Container db            Removed                                                  0.7s
 ✔ Network example6-3_N000 Removed                                                  0.4s
```

================================ Example6-4 ================================

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-3> cd ..
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples> cd .\example6-4\
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-4> docker compose up -d
[+] up 17/17
 ✔ Image nginx:1.23-alpine   Pulled                                                 4.9s
 ✔ Network example6-4_N000   Created                                                0.1s
 ✔ Volume example6-4_db_data Created                                                0.0s
 ✔ Volume example6-4_wp_data Created                                                0.0s
 ✔ Container nginx           Started                                                2.5s
 ✔ Container db              Started                                                1.3s
 ✔ Container wordpress3      Started                                                2.6s
 ✔ Container wordpress1      Started                                                1.3s
 ✔ Container wordpress2      Started                                                1.6s
 ✔ Container wordpress-cli   Started                                                2.5s
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-4> docker compose logs -f nginx
nginx  | /docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
nginx  | /docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
nginx  | /docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
nginx  | 10-listen-on-ipv6-by-default.sh: info: /etc/nginx/conf.d/default.conf is not afile or does not exist
nginx  | /docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
nginx  | /docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
nginx  | /docker-entrypoint.sh: Configuration complete; ready for start up
nginx  | 2026/11/03 22:15:55 [warn] 1#1: could not build optimal proxy_headers_hash, you should increase either proxy_headers_hash_max_size: 512 or proxy_headers_hash_bucket_size: 64; ignoring proxy_headers_hash_bucket_size
nginx  | nginx: [warn] could not build optimal proxy_headers_hash, you should increase either proxy_headers_hash_max_size: 512 or proxy_headers_hash_bucket_size: 64; ignoring proxy_headers_hash_bucket_size
nginx  | 2026/11/03 22:15:55 [notice] 1#1: using the "epoll" event method
nginx  | 2026/11/03 22:15:55 [notice] 1#1: nginx/1.23.4
nginx  | 2026/11/03 22:15:55 [notice] 1#1: built by gcc 12.2.1 20220924 (Alpine 12.2.1_git20220924-r4)
nginx  | 2026/11/03 22:15:55 [notice] 1#1: OS: Linux 6.6.114.1-microsoft-standard-WSL2
nginx  | 2026/11/03 22:15:55 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker processes
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 20
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 21
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 22
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 23
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 24
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 25
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 26
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 27
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 28
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 29
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 30
nginx  | 2026/11/03 22:15:55 [notice] 1#1: start worker process 31
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-login.php HTTP/2.0" 200 2152 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/js/password-strength-meter.min.js?ver=7.1.4 HTTP/2.0" 200 621 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/dist/i18n.min.js?ver=1dfe7db3940c23ea9216 HTTP/2.0" 200 2492 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/underscore.min.js?ver=1.13.8 HTTP/2.0" 200 7372 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/wp-util.min.js?ver=7.1.4 HTTP/2.0" 200 754 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/dist/dom-ready.min.js?ver=3fe927cab37bf38d6a23 HTTP/2.0" 200 498 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/dist/a11y.min.js?ver=31c6cec5a4ff7aff483d HTTP/2.0" 200 1089 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/js/user-profile.min.js?ver=7.1.4 HTTP/2.0" 200 3112 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/wp-tooltip.js?ver=7.1.4 HTTP/2.0" 200 800 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=clipboard,jquery-core,jquery-migrate,zxcvbn-async,wp-hooks&ver=7.1.4 HTTP/2.0" 200 38921 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,buttons,forms,l10n,wp-base-styles,wp-tooltip,login&ver=7.1.4 HTTP/2.0" 200 47603 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/images/wordpress-logo-gray.svg?ver=20260303 HTTP/2.0" 200 1521 "https://localhost/wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,buttons,forms,l10n,wp-base-styles,wp-tooltip,login&ver=7.1.4" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /favicon.ico HTTP/2.0" 404 555 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 2026/11/03 22:16:30 [error] 27#27: *8 open() "/usr/share/nginx/html/favicon.ico" failed (2: No such file or directory), client: 172.26.0.1, server: , request: "GET /favicon.ico HTTP/2.0", host: "localhost", referrer: "https://localhost/wordpress/wp-login.php"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/zxcvbn.min.js HTTP/2.0" 200 399661 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:37 +0000] "POST /wordpress/wp-login.php HTTP/2.0" 302 0 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/ HTTP/2.0" 200 21826 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/thickbox/thickbox.css?ver=7.1.4 HTTP/2.0" 200 937 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/css/colors/modern/colors.min.css?ver=7.1.4 HTTP/2.0" 200 3307 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/hoverintent-js.min.js?ver=2.2.1 HTTP/2.0" 200 718 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/api-request.min.js?ver=7.1.4 HTTP/2.0" 200 590 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/clipboard.min.js?ver=2.0.11 HTTP/2.0" 200 3150 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/site-health.min.js?ver=7.1.4 HTTP/2.0" 200 2255 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/css/editor.min.css?ver=7.1.4 HTTP/2.0" 200 6005 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/admin-bar.min.js?ver=7.1.4 HTTP/2.0" 200 1357 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/common.min.js?ver=7.1.4 HTTP/2.0" 200 8535 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wp-ajax-response.min.js?ver=7.1.4 HTTP/2.0" 200 1134 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/url.min.js?ver=7b0de086d4ae11d55704 HTTP/2.0" 200 3937 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=hoverIntent,wp-dom-ready,wp-hooks&ver=7.1.4 HTTP/2.0" 200 2704 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/jquery.color.min.js?ver=3.0.0 HTTP/2.0" 200 2724 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wp-lists.min.js?ver=7.1.4 HTTP/2.0" 200 2534 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/jquery.query.js?ver=2.2.3 HTTP/2.0" 200 1627 "https://localhost/wordpress/wp-admin/""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/quicktags.min.js?ver=7.1.4 HTTP/2.0" 200 3509 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=jquery-core,jquery-migrate,utils&ver=7.1.4 HTTP/2.0" 200 35062 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/edit-comments.min.js?ver=7.1.4 HTTP/2.0" 200 5184 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/deprecated.min.js?ver=fe587bac92b7d0ef760e HTTP/2.0" 200 763 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/ui/mouse.min.js?ver=1.14.2 HTTP/2.0" 200 1052 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wp-sanitize.min.js?ver=7.1.4 HTTP/2.0" 200 271 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/postbox.min.js?ver=7.1.4 HTTP/2.0" 200 2236 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/dashboard.min.js?ver=7.1.4 HTTP/2.0" 200 3066 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/plugin-install.min.js?ver=7.1.4 HTTP/2.0" 200 1021 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/thickbox/thickbox.js?ver=3.1-20121105 HTTP/2.0" 200 4032 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/ui/sortable.min.js?ver=1.14.2 HTTP/2.0" 200 6540 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/ui/core.min.js?ver=1.14.2 HTTP/2.0" 200 6512 "https://localhost/wordpress/wp-admin/""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/shortcode.min.js?ver=7.1.4 HTTP/2.0" 200 1145 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/updates.min.js?ver=7.1.4 HTTP/2.0" 200 10433 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,admin-bar,site-health,common,forms,admin-menu,dashboard,list-tables,edit,revisions,media,themes,about,nav-menus,wp-poi&load%5Bchunk_1%5D=nter,widgets,site-icon,l10n,wp-base-styles,wp-tooltip,buttons,wp-auth-check,wp-theme,wp-components,wp-commands&ver=7.1.4 HTTP/2.0" 200 123238 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/vendor/moment.min.js?ver=2.30.1 HTTP/2.0" 200 18754 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/date.min.js?ver=8173fc0fc12b7bb7eaf0 HTTP/2.0" 200 24073 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/media-upload.min.js?ver=7.1.4 HTTP/2.0" 200 613 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/svg-painter.js?ver=7.1.4 HTTP/2.0" 200 1218 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wp-auth-check.min.js?ver=7.1.4 HTTP/2.0" 200 782 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/heartbeat.min.js?ver=7.1.4 HTTP/2.0" 200 2041 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/vendor/react.min.js?ver=18.3.1.1 HTTP/2.0" 200 4263 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/vendor/react-dom.min.js?ver=18.3.1.1 HTTP/2.0" 200 42994 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/is-shallow-equal.min.js?ver=7ad271045c1fe60f5496 HTTP/2.0" 200 596 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/escape-html.min.js?ver=87ebe53e97bba59805a5 HTTP/2.0" 200 613 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/vendor/react-jsx-runtime.min.js?ver=18.3.1 HTTP/2.0" 200 664 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/keycodes.min.js?ver=d0b4204e4bbeb412df6e HTTP/2.0" 200 1581 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/private-apis.min.js?ver=eb85f28c4c729bb4f002 HTTP/2.0" 200 1170 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/priority-queue.min.js?ver=6c0aa59b65d55dfd509b HTTP/2.0" 200 1626 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/undo-manager.min.js?ver=4554fce6276d8910a4ae HTTP/2.0" 200 942 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/dom.min.js?ver=c95f94cbbc1ac3fde84f HTTP/2.0" 200 5108 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/element.min.js?ver=4a4370b2b349066fd440 HTTP/2.0" 200 5213 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/redux-routine.min.js?ver=acca2b4857d83ad1790e HTTP/2.0" 200 3385 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML,like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/primitives.min.js?ver=44cc5a35c7b9fe07a838 HTTP/2.0" 200 1033 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/html-entities.min.js?ver=a976ff3a0f00bc2999a3 HTTP/2.0" 200 521 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/compose.min.js?ver=0e8bde2a499ea6073b42 HTTP/2.0" 200 11584 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/data.min.js?ver=14a216e0932d72c22976 HTTP/2.0" 200 9753 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/rich-text.min.js?ver=3e5852e42cee1c239bae HTTP/2.0" 200 14874 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/theme.min.js?ver=56a75cc08ae66c1fcb7a HTTP/2.0" 200 22570 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/warning.min.js?ver=a0978839debc564a6608 HTTP/2.0" 200 474 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/keyboard-shortcuts.min.js?ver=37da95806f2339bc80d0 HTTP/2.0" 200 1636 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/blob.min.js?ver=c7582a735ddd2edc9731 HTTP/2.0" 200 654 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/shortcode.min.js?ver=f6273476300cc5fad4cd HTTP/2.0" 200 1597 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/block-serialization-default-parser.min.js?ver=fc209395a022242d64aa HTTP/2.0" 200 1198 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/autop.min.js?ver=4e10a18cb6f21a043fc0 HTTP/2.0" 200 2188 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/preferences-persistence.min.js?ver=a34abbdacd8f50f9acb1 HTTP/2.0" 200 2175 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/api-fetch.min.js?ver=6f2a4faeee3c722b1e57 HTTP/2.0" 200 3341 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/preferences.min.js?ver=5a169e3fc0e657f74172 HTTP/2.0" 200 3346 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/commands.min.js?ver=1a4910212c7ed2355300 HTTP/2.0" 200 19844 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/notices.min.js?ver=c09a068fdab0eb465e14 HTTP/2.0" 200 1716 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/style-engine.min.js?ver=914befb08774033e6265 HTTP/2.0" 200 2490 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/token-list.min.js?ver=e86ab419d8302d57822c HTTP/2.0" 200 763 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/upload-media.min.js?ver=a2c026d433c295fd5145 HTTP/2.0" 200 16416 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML,like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/blocks.min.js?ver=c0e57a630a0b6f6c3bb5 HTTP/2.0" 200 45089 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wplink.min.js?ver=7.1.4 HTTP/2.0" 200 3897 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/ui/menu.min.js?ver=1.14.2 HTTP/2.0" 200 3043 "https://localhost/wordpress/wp-admin/""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/core-commands.min.js?ver=426a33508599b7f31db3 HTTP/2.0" 200 4316 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML,like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/router.min.js?ver=dda75cd9ff9d7e0eb19f HTTP/2.0" 200 5975 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/ui/autocomplete.min.js?ver=1.14.2 HTTP/2.0" 200 2814 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/core-data.min.js?ver=573f98dbff9f49ffeb0b HTTP/2.0" 200 72799 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/components.min.js?ver=9b751f17060211272a5c HTTP/2.0" 200 271535 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/block-editor.min.js?ver=37e58da384b2558bd479 HTTP/2.0" 200 427323 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/index.php?rest_route=%2Fwp%2Fv2%2Fusers%2Fme&context=edit&_locale=user HTTP/2.0" 200 2375 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/thickbox/loadingAnimation.gif HTTP/2.0" 200 15238 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/admin-ajax.php?action=wp-compression-test&test=1&_ajax_nonce=174413b9d5&1793744201843 HTTP/2.0" 200 574 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:42 +0000] "GET /wordpress/wp-includes/js/wp-emoji-release.min.js?ver=7.1.4 HTTP/2.0" 200 5386 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:42 +0000] "GET /wordpress/wp-admin/admin-ajax.php?action=wp-compression-test&test=no&_ajax_nonce=174413b9d5&1793744201969 HTTP/2.0" 200 1 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:42 +0000] "POST /wordpress/wp-admin/admin-ajax.php HTTP/2.0" 200 1291 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:44 +0000] "GET /wordpress/wp-admin/admin-ajax.php?action=dashboard-widgets&widget=dashboard_primary&pagenow=dashboard HTTP/2.0" 200 367 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/ HTTP/2.0" 200 13311 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-includes/css/admin-bar.min.css?ver=7.1.4 HTTP/2.0" 200 4034 "https://localhost/wordpress/" "Mozilla/5.0(Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-includes/css/dashicons.min.css?ver=7.1.4 HTTP/2.0" 200 35721 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-includes/js/dist/script-modules/interactivity/index.min.js?ver=6a43cba92ed701f32cd9 HTTP/2.0" 200 16085"https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-includes/js/dist/script-modules/block-library/navigation/view.min.js?ver=1bf28ded04f9f188bdcb HTTP/2.0"200 1122 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-content/themes/twentytwentyfive/assets/fonts/manrope/Manrope-VariableFont_wght.woff2 HTTP/2.0" 200 53600 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:17:02 +0000] "GET /wordpress/wp-admin/about.phpHTTP/2.0" 200 14316 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:17:02 +0000] "GET /wordpress/wp-admin/images/about-release-badge.svg?ver=7.1 HTTP/2.0" 200 2126 "https://localhost/wordpress/wp-admin/about.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:17:02 +0000] "GET /wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,admin-bar,common,forms,admin-menu,dashboard,list-tables,edit,revisions,media,themes,about,nav-menus,wp-pointer,widgets&load%5Bchunk_1%5D=,site-icon,l10n,wp-base-styles,wp-tooltip,buttons,wp-auth-check,wp-theme,wp-components,wp-commands&ver=7.1.4 HTTP/2.0" 200 122139 "https://localhost/wordpress/wp-admin/about.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:17:02 +0000] "GET /wordpress/wp-admin/images/about-header-default.svg?ver=7.1 HTTP/2.0" 200 2993 "https://localhost/wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,admin-bar,common,forms,admin-menu,dashboard,list-tables,edit,revisions,media,themes,about,nav-menus,wp-pointer,widgets&load%5Bchunk_1%5D=,site-icon,l10n,wp-base-styles,wp-tooltip,buttons,wp-auth-check,wp-theme,wp-components,wp-commands&ver=7.1.4" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:17:03 +0000] "GET /wordpress/index.php?rest_route=%2Fwp%2Fv2%2Fusers%2Fme&context=edit&_locale=user HTTP/2.0" 200 2375 "https://localhost/wordpress/wp-admin/about.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:17:04 +0000] "GET /wordpress/wp-admin/index.phpHTTP/2.0" 200 22119 "https://localhost/wordpress/wp-admin/about.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:17:04 +0000] "GET /wordpress/index.php?rest_route=%2Fwp%2Fv2%2Fusers%2Fme&context=edit&_locale=user HTTP/2.0" 200 2375 "https://localhost/wordpress/wp-admin/index.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
nginx  | 172.26.0.1 - - [03/Nov/2026:22:17:04 +0000] "GET /wordpress/wp-includes/js/thickbox/loadingAnimation.gif HTTP/2.0" 200 15238 "https://localhost/wordpress/wp-admin/index.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-4> docker compose logs -f wordpress1
wordpress1  | WordPress not found in /var/www/html/wordpress - copying now...
wordpress1  | Complete! WordPress has been successfully copied to /var/www/html/wordpress
wordpress1  | AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.26.0.81. Set the 'ServerName' directive globally to suppress this message
wordpress1  | AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.26.0.81. Set the 'ServerName' directive globally to suppress this message
wordpress1  | [Tue Nov 03 22:15:55.505649 2026] [mpm_prefork:notice] [pid 1:tid 1] AH00163: Apache/2.4.69 (Debian) PHP/8.3.36 configured -- resuming normal operations
wordpress1  | [Tue Nov 03 22:15:55.505756 2026] [core:notice] [pid 1:tid 1] AH00094: Command line: 'apache2 -D FOREGROUND'
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-login.php HTTP/1.0" 200 2726 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/dist/i18n.min.js?ver=1dfe7db3940c23ea9216 HTTP/1.0" 200 2800 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/wp-util.min.js?ver=7.1.4 HTTP/1.0" 200 1060 "https://localhost/wordpress/wp-login.php""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/js/user-profile.min.js?ver=7.1.4 HTTP/1.0" 200 3420 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/zxcvbn.min.js HTTP/1.0" 200 399948 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/clipboard.min.js?ver=2.0.11 HTTP/1.0" 200 3458 "https://localhost/wordpress/wp-admin/""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/site-health.min.js?ver=7.1.4 HTTP/1.0" 200 2563 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/css/editor.min.css?ver=7.1.4 HTTP/1.0" 200 6306 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/common.min.js?ver=7.1.4 HTTP/1.0" 200 8843 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wp-lists.min.js?ver=7.1.4 HTTP/1.0" 200 2842 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/edit-comments.min.js?ver=7.1.4 HTTP/1.0" 200 5492 "https://localhost/wordpress/wp-admin/""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/deprecated.min.js?ver=fe587bac92b7d0ef760e HTTP/1.0" 200 1069 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/thickbox/thickbox.js?ver=3.1-20121105 HTTP/1.0" 200 4340 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/ui/sortable.min.js?ver=1.14.2 HTTP/1.0" 200 6848 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/updates.min.js?ver=7.1.4 HTTP/1.0" 200 10742 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,admin-bar,site-health,common,forms,admin-menu,dashboard,list-tables,edit,revisions,media,themes,about,nav-menus,wp-poi&load%5Bchunk_1%5D=nter,widgets,site-icon,l10n,wp-base-styles,wp-tooltip,buttons,wp-auth-check,wp-theme,wp-components,wp-commands&ver=7.1.4 HTTP/1.0" 200 123587 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML,like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/svg-painter.js?ver=7.1.4 HTTP/1.0" 200 1525 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/vendor/react.min.js?ver=18.3.1.1 HTTP/1.0" 200 4571 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/is-shallow-equal.min.js?ver=7ad271045c1fe60f5496 HTTP/1.0" 200 902 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/private-apis.min.js?ver=eb85f28c4c729bb4f002 HTTP/1.0" 200 1477 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/dom.min.js?ver=c95f94cbbc1ac3fde84f HTTP/1.0" 200 5416 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/html-entities.min.js?ver=a976ff3a0f00bc2999a3 HTTP/1.0" 200 827 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/data.min.js?ver=14a216e0932d72c22976 HTTP/1.0" 200 10061 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/warning.min.js?ver=a0978839debc564a6608 HTTP/1.0" 200 780 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/autop.min.js?ver=4e10a18cb6f21a043fc0 HTTP/1.0" 200 2496 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/api-fetch.min.js?ver=6f2a4faeee3c722b1e57 HTTP/1.0" 200 3649 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/commands.min.js?ver=1a4910212c7ed2355300 HTTP/1.0" 200 20153 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/notices.min.js?ver=c09a068fdab0eb465e14 HTTP/1.0" 200 2023 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/upload-media.min.js?ver=a2c026d433c295fd5145 HTTP/1.0" 200 16725 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/ui/menu.min.js?ver=1.14.2 HTTP/1.0" 200 3351 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/router.min.js?ver=dda75cd9ff9d7e0eb19f HTTP/1.0" 200 6283 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/admin-ajax.php?action=wp-compression-test&test=1&_ajax_nonce=174413b9d5&1793744201843 HTTP/1.0" 200 1152 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/admin-ajax.php?action=dashboard-widgets&widget=dashboard_primary&pagenow=dashboard HTTP/1.0"200 905 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/ HTTP/1.0" 200 13752 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-includes/js/dist/script-modules/interactivity/index.min.js?ver=6a43cba92ed701f32cd9 HTTP/1.0" 200 16394 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:17:02 +0000] "GET /wordpress/wp-admin/about.php HTTP/1.0" 200 15037 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:17:02 +0000] "GET /wordpress/wp-admin/images/about-header-default.svg?ver=7.1 HTTP/1.0" 200 3246 "https://localhost/wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,admin-bar,common,forms,admin-menu,dashboard,list-tables,edit,revisions,media,themes,about,nav-menus,wp-pointer,widgets&load%5Bchunk_1%5D=,site-icon,l10n,wp-base-styles,wp-tooltip,buttons,wp-auth-check,wp-theme,wp-components,wp-commands&ver=7.1.4" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:17:04 +0000] "GET /wordpress/index.php?rest_route=%2Fwp%2Fv2%2Fusers%2Fme&context=edit&_locale=user HTTP/1.0" 200 3064 "https://localhost/wordpress/wp-admin/index.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress1  | 172.26.0.1 - - [03/Nov/2026:22:17:18 +0000] "-" 408 0 "-" "-"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-4> docker compose logs -f wordpress2
wordpress2  | No 'wp-config.php' found in /var/www/html/wordpress, but 'WORDPRESS_...' variables supplied; copying '/usr/src/wordpress/wp-config-docker.php' (WORDPRESS_DB_HOSTWORDPRESS_DB_NAME WORDPRESS_DB_PASSWORD WORDPRESS_DB_USER WORDPRESS_DEBUG WORDPRESS_TABLE_PREFIX)
wordpress2  | AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.26.0.82. Set the 'ServerName' directive globally to suppress this message
wordpress2  | AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.26.0.82. Set the 'ServerName' directive globally to suppress this message
wordpress2  | [Tue Nov 03 22:15:54.866391 2026] [mpm_prefork:notice] [pid 1:tid 1] AH00163: Apache/2.4.69 (Debian) PHP/8.3.36 configured -- resuming normal operations
wordpress2  | [Tue Nov 03 22:15:54.866463 2026] [core:notice] [pid 1:tid 1] AH00094: Command line: 'apache2 -D FOREGROUND'
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/js/password-strength-meter.min.js?ver=7.1.4 HTTP/1.0" 200 927 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/dist/dom-ready.min.js?ver=3fe927cab37bf38d6a23 HTTP/1.0" 200 804 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/wp-tooltip.js?ver=7.1.4 HTTP/1.0" 200 1106 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,buttons,forms,l10n,wp-base-styles,wp-tooltip,login&ver=7.1.4 HTTP/1.0" 200 47952 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:37 +0000] "POST /wordpress/wp-login.phpHTTP/1.0" 302 1318 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/thickbox/thickbox.css?ver=7.1.4 HTTP/1.0" 200 1236 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/hoverintent-js.min.js?ver=2.2.1 HTTP/1.0" 200 1024 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/api-request.min.js?ver=7.1.4 HTTP/1.0" 200 896 "https://localhost/wordpress/wp-admin/""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wp-ajax-response.min.js?ver=7.1.4 HTTP/1.0" 200 1441 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/quicktags.min.js?ver=7.1.4 HTTP/1.0" 200 3817 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=jquery-core,jquery-migrate,utils&ver=7.1.4 HTTP/1.0" 200 35448 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/postbox.min.js?ver=7.1.4 HTTP/1.0" 200 2544 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/plugin-install.min.js?ver=7.1.4 HTTP/1.0" 200 1328 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/ui/core.min.js?ver=1.14.2 HTTP/1.0" 200 6820 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/shortcode.min.js?ver=7.1.4 HTTP/1.0" 200 1452 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/date.min.js?ver=8173fc0fc12b7bb7eaf0 HTTP/1.0" 200 24383 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/heartbeat.min.js?ver=7.1.4 HTTP/1.0" 200 2349 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/vendor/react-dom.min.js?ver=18.3.1.1 HTTP/1.0" 200 43304 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/escape-html.min.js?ver=87ebe53e97bba59805a5 HTTP/1.0" 200 919 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/keycodes.min.js?ver=d0b4204e4bbeb412df6e HTTP/1.0" 200 1888 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML,like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/undo-manager.min.js?ver=4554fce6276d8910a4ae HTTP/1.0" 200 1248 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/primitives.min.js?ver=44cc5a35c7b9fe07a838 HTTP/1.0" 200 1340 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/rich-text.min.js?ver=3e5852e42cee1c239bae HTTP/1.0" 200 15183 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/shortcode.min.js?ver=f6273476300cc5fad4cd HTTP/1.0" 200 1904 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/blob.min.js?ver=c7582a735ddd2edc9731 HTTP/1.0" 200 960 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/preferences-persistence.min.js?ver=a34abbdacd8f50f9acb1 HTTP/1.0" 200 2483 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/style-engine.min.js?ver=914befb08774033e6265 HTTP/1.0" 200 2798 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/core-commands.min.js?ver=426a33508599b7f31db3 HTTP/1.0" 200 4624 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/ui/autocomplete.min.js?ver=1.14.2 HTTP/1.0" 200 3122 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/components.min.js?ver=9b751f17060211272a5c HTTP/1.0" 200 271822 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/block-editor.min.js?ver=37e58da384b2558bd479 HTTP/1.0" 200 427611 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/admin-ajax.php?action=wp-compression-test&test=no&_ajax_nonce=174413b9d5&1793744201969 HTTP/1.0" 200 503 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "POST /wordpress/wp-admin/admin-ajax.php HTTP/1.0" 200 1878 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-includes/css/dashicons.min.css?ver=7.1.4 HTTP/1.0" 200 36023 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-includes/js/dist/script-modules/block-library/navigation/view.min.js?ver=1bf28ded04f9f188bdcb HTTP/1.0" 200 1429 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:17:02 +0000] "GET /wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,admin-bar,common,forms,admin-menu,dashboard,list-tables,edit,revisions,media,themes,about,nav-menus,wp-pointer,widgets&load%5Bchunk_1%5D=,site-icon,l10n,wp-base-styles,wp-tooltip,buttons,wp-auth-check,wp-theme,wp-components,wp-commands&ver=7.1.4 HTTP/1.0" 200 122488 "https://localhost/wordpress/wp-admin/about.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:17:02 +0000] "GET /wordpress/index.php?rest_route=%2Fwp%2Fv2%2Fusers%2Fme&context=edit&_locale=user HTTP/1.0" 200 3064 "https://localhost/wordpress/wp-admin/about.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress2  | 172.26.0.1 - - [03/Nov/2026:22:17:04 +0000] "GET /wordpress/wp-includes/js/thickbox/loadingAnimation.gif HTTP/1.0" 200 15489 "https://localhost/wordpress/wp-admin/index.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-4> docker compose logs -f wordpress3
wordpress3  | AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.26.0.83. Set the 'ServerName' directive globally to suppress this message
wordpress3  | AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.26.0.83. Set the 'ServerName' directive globally to suppress this message
wordpress3  | [Tue Nov 03 22:15:55.754032 2026] [mpm_prefork:notice] [pid 1:tid 1] AH00163: Apache/2.4.69 (Debian) PHP/8.3.36 configured -- resuming normal operations
wordpress3  | [Tue Nov 03 22:15:55.754097 2026] [core:notice] [pid 1:tid 1] AH00094: Command line: 'apache2 -D FOREGROUND'
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/underscore.min.js?ver=1.13.8 HTTP/1.0" 200 7680 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/dist/a11y.min.js?ver=31c6cec5a4ff7aff483d HTTP/1.0" 200 1396 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=clipboard,jquery-core,jquery-migrate,zxcvbn-async,wp-hooks&ver=7.1.4 HTTP/1.0" 200 39307 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/images/wordpress-logo-gray.svg?ver=20260303 HTTP/1.0" 200 1774 "https://localhost/wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,buttons,forms,l10n,wp-base-styles,wp-tooltip,login&ver=7.1.4" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:37 +0000] "GET /wordpress/wp-admin/ HTTP/1.0" 200 22547 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/css/colors/modern/colors.min.css?ver=7.1.4 HTTP/1.0" 200 3608 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/admin-bar.min.js?ver=7.1.4 HTTP/1.0" 200 1664 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/url.min.js?ver=7b0de086d4ae11d55704 HTTP/1.0" 200 4245 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=hoverIntent,wp-dom-ready,wp-hooks&ver=7.1.4 HTTP/1.0"200 3089 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/jquery.color.min.js?ver=3.0.0 HTTP/1.0" 200 3032 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/jquery.query.js?ver=2.2.3 HTTP/1.0" 200 1934 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wp-sanitize.min.js?ver=7.1.4 HTTP/1.0" 200 577 "https://localhost/wordpress/wp-admin/""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/ui/mouse.min.js?ver=1.14.2 HTTP/1.0" 200 1359 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/dashboard.min.js?ver=7.1.4 HTTP/1.0" 200 3374 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/vendor/moment.min.js?ver=2.30.1 HTTP/1.0" 200 19063 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/media-upload.min.js?ver=7.1.4 HTTP/1.0" 200 919 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wp-auth-check.min.js?ver=7.1.4 HTTP/1.0" 200 1088 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/vendor/react-jsx-runtime.min.js?ver=18.3.1 HTTP/1.0" 200 970 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/priority-queue.min.js?ver=6c0aa59b65d55dfd509b HTTP/1.0" 200 1933 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/redux-routine.min.js?ver=acca2b4857d83ad1790e HTTP/1.0" 200 3693 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/element.min.js?ver=4a4370b2b349066fd440 HTTP/1.0" 200 5521 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/compose.min.js?ver=0e8bde2a499ea6073b42 HTTP/1.0" 200 11893 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML,like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/theme.min.js?ver=56a75cc08ae66c1fcb7a HTTP/1.0" 200 22879 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/keyboard-shortcuts.min.js?ver=37da95806f2339bc80d0 HTTP/1.0" 200 1943 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/block-serialization-default-parser.min.js?ver=fc209395a022242d64aa HTTP/1.0" 200 1505 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/preferences.min.js?ver=5a169e3fc0e657f74172 HTTP/1.0" 200 3654 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/token-list.min.js?ver=e86ab419d8302d57822c HTTP/1.0" 200 1069 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/blocks.min.js?ver=c0e57a630a0b6f6c3bb5 HTTP/1.0" 200 45399 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wplink.min.js?ver=7.1.4 HTTP/1.0" 200 4205 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/core-data.min.js?ver=573f98dbff9f49ffeb0b HTTP/1.0" 200 73086 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/index.php?rest_route=%2Fwp%2Fv2%2Fusers%2Fme&context=edit&_locale=user HTTP/1.0" 200 3064 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/thickbox/loadingAnimation.gif HTTP/1.0" 200 15489 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:42 +0000] "GET /wordpress/wp-includes/js/wp-emoji-release.min.js?ver=7.1.4 HTTP/1.0" 200 5694 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-includes/css/admin-bar.min.css?ver=7.1.4 HTTP/1.0" 200 4335 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-content/themes/twentytwentyfive/assets/fonts/manrope/Manrope-VariableFont_wght.woff2 HTTP/1.0" 20053852 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:17:02 +0000] "GET /wordpress/wp-admin/images/about-release-badge.svg?ver=7.1 HTTP/1.0" 200 2379 "https://localhost/wordpress/wp-admin/about.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:17:04 +0000] "GET /wordpress/wp-admin/index.php HTTP/1.0" 200 22840 "https://localhost/wordpress/wp-admin/about.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-4> docker compose logs -f wordpress3
wordpress3  | AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.26.0.83. Set the 'ServerName' directive globally to suppress this message
wordpress3  | AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.26.0.83. Set the 'ServerName' directive globally to suppress this message
wordpress3  | [Tue Nov 03 22:15:55.754032 2026] [mpm_prefork:notice] [pid 1:tid 1] AH00163: Apache/2.4.69 (Debian) PHP/8.3.36 configured -- resuming normal operations
wordpress3  | [Tue Nov 03 22:15:55.754097 2026] [core:notice] [pid 1:tid 1] AH00094: Command line: 'apache2 -D FOREGROUND'
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/underscore.min.js?ver=1.13.8 HTTP/1.0" 200 7680 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-includes/js/dist/a11y.min.js?ver=31c6cec5a4ff7aff483d HTTP/1.0" 200 1396 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=clipboard,jquery-core,jquery-migrate,zxcvbn-async,wp-hooks&ver=7.1.4 HTTP/1.0" 200 39307 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:30 +0000] "GET /wordpress/wp-admin/images/wordpress-logo-gray.svg?ver=20260303 HTTP/1.0" 200 1774 "https://localhost/wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,buttons,forms,l10n,wp-base-styles,wp-tooltip,login&ver=7.1.4" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:37 +0000] "GET /wordpress/wp-admin/ HTTP/1.0" 200 22547 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/css/colors/modern/colors.min.css?ver=7.1.4 HTTP/1.0" 200 3608 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/admin-bar.min.js?ver=7.1.4 HTTP/1.0" 200 1664 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/url.min.js?ver=7b0de086d4ae11d55704 HTTP/1.0" 200 4245 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=hoverIntent,wp-dom-ready,wp-hooks&ver=7.1.4 HTTP/1.0"200 3089 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/jquery.color.min.js?ver=3.0.0 HTTP/1.0" 200 3032 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/jquery.query.js?ver=2.2.3 HTTP/1.0" 200 1934 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wp-sanitize.min.js?ver=7.1.4 HTTP/1.0" 200 577 "https://localhost/wordpress/wp-admin/""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/jquery/ui/mouse.min.js?ver=1.14.2 HTTP/1.0" 200 1359 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/dashboard.min.js?ver=7.1.4 HTTP/1.0" 200 3374 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/vendor/moment.min.js?ver=2.30.1 HTTP/1.0" 200 19063 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-admin/js/media-upload.min.js?ver=7.1.4 HTTP/1.0" 200 919 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wp-auth-check.min.js?ver=7.1.4 HTTP/1.0" 200 1088 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/vendor/react-jsx-runtime.min.js?ver=18.3.1 HTTP/1.0" 200 970 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/priority-queue.min.js?ver=6c0aa59b65d55dfd509b HTTP/1.0" 200 1933 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/redux-routine.min.js?ver=acca2b4857d83ad1790e HTTP/1.0" 200 3693 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/element.min.js?ver=4a4370b2b349066fd440 HTTP/1.0" 200 5521 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/compose.min.js?ver=0e8bde2a499ea6073b42 HTTP/1.0" 200 11893 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML,like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/theme.min.js?ver=56a75cc08ae66c1fcb7a HTTP/1.0" 200 22879 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/keyboard-shortcuts.min.js?ver=37da95806f2339bc80d0 HTTP/1.0" 200 1943 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/block-serialization-default-parser.min.js?ver=fc209395a022242d64aa HTTP/1.0" 200 1505 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/preferences.min.js?ver=5a169e3fc0e657f74172 HTTP/1.0" 200 3654 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/token-list.min.js?ver=e86ab419d8302d57822c HTTP/1.0" 200 1069 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/blocks.min.js?ver=c0e57a630a0b6f6c3bb5 HTTP/1.0" 200 45399 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/wplink.min.js?ver=7.1.4 HTTP/1.0" 200 4205 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/dist/core-data.min.js?ver=573f98dbff9f49ffeb0b HTTP/1.0" 200 73086 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/index.php?rest_route=%2Fwp%2Fv2%2Fusers%2Fme&context=edit&_locale=user HTTP/1.0" 200 3064 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:41 +0000] "GET /wordpress/wp-includes/js/thickbox/loadingAnimation.gif HTTP/1.0" 200 15489 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:42 +0000] "GET /wordpress/wp-includes/js/wp-emoji-release.min.js?ver=7.1.4 HTTP/1.0" 200 5694 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-includes/css/admin-bar.min.css?ver=7.1.4 HTTP/1.0" 200 4335 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:16:49 +0000] "GET /wordpress/wp-content/themes/twentytwentyfive/assets/fonts/manrope/Manrope-VariableFont_wght.woff2 HTTP/1.0" 20053852 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:17:02 +0000] "GET /wordpress/wp-admin/images/about-release-badge.svg?ver=7.1 HTTP/1.0" 200 2379 "https://localhost/wordpress/wp-admin/about.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:17:04 +0000] "GET /wordpress/wp-admin/index.php HTTP/1.0" 200 22840 "https://localhost/wordpress/wp-admin/about.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:26 +0000] "GET /wordpress/wp-includes/js/underscore.min.js?ver=1.13.8 HTTP/1.0" 200 7680 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:26 +0000] "GET /wordpress/wp-includes/js/dist/a11y.min.js?ver=31c6cec5a4ff7aff483d HTTP/1.0" 200 1396 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:26 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=clipboard,jquery-core,jquery-migrate,zxcvbn-async,wp-hooks&ver=7.1.4 HTTP/1.0" 200 39307 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:26 +0000] "GET /wordpress/wp-admin/images/wordpress-logo-gray.svg?ver=20260303 HTTP/1.0" 200 1774 "https://localhost/wordpress/wp-admin/load-styles.php?c=0&dir=ltr&load%5Bchunk_0%5D=dashicons,buttons,forms,l10n,wp-base-styles,wp-tooltip,login&ver=7.1.4" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-admin/ HTTP/1.0" 200 22831 "https://localhost/wordpress/wp-login.php" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-admin/css/colors/modern/colors.min.css?ver=7.1.4 HTTP/1.0" 200 3608 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/admin-bar.min.js?ver=7.1.4 HTTP/1.0" 200 1664 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-admin/load-scripts.php?c=0&load%5Bchunk_0%5D=hoverIntent,wp-dom-ready,wp-hooks&ver=7.1.4 HTTP/1.0"200 3089 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/url.min.js?ver=7b0de086d4ae11d55704 HTTP/1.0" 200 4245 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/jquery/jquery.query.js?ver=2.2.3 HTTP/1.0" 200 1934 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/jquery/jquery.color.min.js?ver=3.0.0 HTTP/1.0" 200 3032 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/jquery/ui/mouse.min.js?ver=1.14.2 HTTP/1.0" 200 1359 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-admin/js/dashboard.min.js?ver=7.1.4 HTTP/1.0" 200 3374 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/wp-sanitize.min.js?ver=7.1.4 HTTP/1.0" 200 577 "https://localhost/wordpress/wp-admin/""Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-admin/js/media-upload.min.js?ver=7.1.4 HTTP/1.0" 200 919 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/vendor/moment.min.js?ver=2.30.1 HTTP/1.0" 200 19063 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/wp-auth-check.min.js?ver=7.1.4 HTTP/1.0" 200 1088 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/vendor/react-jsx-runtime.min.js?ver=18.3.1 HTTP/1.0" 200 970 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/element.min.js?ver=4a4370b2b349066fd440 HTTP/1.0" 200 5521 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/priority-queue.min.js?ver=6c0aa59b65d55dfd509b HTTP/1.0" 200 1933 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/redux-routine.min.js?ver=acca2b4857d83ad1790e HTTP/1.0" 200 3693 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/compose.min.js?ver=0e8bde2a499ea6073b42 HTTP/1.0" 200 11893 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML,like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/theme.min.js?ver=56a75cc08ae66c1fcb7a HTTP/1.0" 200 22879 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/keyboard-shortcuts.min.js?ver=37da95806f2339bc80d0 HTTP/1.0" 200 1943 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/preferences.min.js?ver=5a169e3fc0e657f74172 HTTP/1.0" 200 3654 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/block-serialization-default-parser.min.js?ver=fc209395a022242d64aa HTTP/1.0" 200 1505 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/blocks.min.js?ver=c0e57a630a0b6f6c3bb5 HTTP/1.0" 200 45399 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/token-list.min.js?ver=e86ab419d8302d57822c HTTP/1.0" 200 1069 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/wplink.min.js?ver=7.1.4 HTTP/1.0" 200 4205 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/wp-includes/js/dist/core-data.min.js?ver=573f98dbff9f49ffeb0b HTTP/1.0" 200 73086 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:31 +0000] "GET /wordpress/index.php?rest_route=%2Fwp%2Fv2%2Fusers%2Fme&context=edit&_locale=user HTTP/1.0" 200 3064 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:33 +0000] "GET /wordpress/ HTTP/1.0" 200 13752 "https://localhost/wordpress/wp-admin/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:34 +0000] "GET /wordpress/wp-includes/js/dist/script-modules/interactivity/index.min.js?ver=6a43cba92ed701f32cd9 HTTP/1.0" 200 16394 "https://localhost/wordpress/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:42 +0000] "GET /wordpress/ HTTP/1.0" 200 13752 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:52 +0000] "GET /wordpress/ HTTP/1.0" 200 13752 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:53 +0000] "GET /wordpress/ HTTP/1.0" 200 13752 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
wordpress3  | 172.26.0.1 - - [03/Nov/2026:22:18:54 +0000] "GET /wordpress/ HTTP/1.0" 200 13752 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0"
```

```
PS C:\devel\gitrepos\COM511_Network_Systems_Automation\myPracticeCourseWork\session6\docker-compose-examples\example6-4> docker compose down -v
[+] down 9/9
 ✔ Container nginx           Removed                                                0.7s
 ✔ Container wordpress-cli   Removed                                                0.1s
 ✔ Container wordpress1      Removed                                                1.6s
 ✔ Container wordpress2      Removed                                                1.7s
 ✔ Container wordpress3      Removed                                                1.9s
 ✔ Container db              Removed                                                0.7s
 ✔ Volume example6-4_db_data Removed                                                0.0s
 ✔ Volume example6-4_wp_data Removed                                                0.2s
 ✔ Network example6-4_N000   Removed                                                0.3s
```
