# WordPress Docker

Start build WordPress CMS site from scratch. driven by Docker.

### Package include
* [WordPress](https://wordpress.org/) -  Free and open-source CMS 

### Built With DOCKER
* WordPress 4.9.6
* PHP MyAdmin
* MySql

### Requirement
You should have these install on your machine
* Docker version 18.03
* node v9.3.0
* Git

### Tested on 
* Windows 7
* Docker runs with Oracle VM

### How to use
Run docker machine.
In case of first time use: you need to run command in MINGW64. this might take a while.
```
docker-compose build
```
then you can just type in cmd 
```
docker-compose up -d
```

### To access PHP MyAdmin
```
http://localhost:8888
```
Username: root / Password: root

### Docker volume
You can change it in docker-compose.yml / replace XXX with your project folder
```
    volumes:
      - /htdocker/XXX/config/php.conf.uploads.ini:/usr/local/etc/php/conf.d/uploads.ini
      - /htdocker/XXX/www/:/var/www/html
```

### Default database name
You can change it in docker-compose.yml
```
MYSQL_DATABASE=wpdb
```

### Starter Database
Put your SQL file in folder /sql/inuse (uncompressed SQL file). if folder is empty Docker will use a database from previous run ( /sql/temp ) or start WordPress installer from the beginning.


### Replace this SQL when site live
```
UPDATE wp_options SET option_value = 'http://www.yourwebsite.com' WHERE `wp_options`.`option_id` in (1,2);
UPDATE wp_posts SET post_content = REPLACE(post_content, 'http://localhost', 'http://www.yourwebsite.com');
UPDATE wp_postmeta SET meta_value = REPLACE(meta_value, 'http://localhost', 'http://www.yourwebsite.com');
UPDATE wp_options SET option_value = REPLACE(option_value, 'http://localhost', 'http://www.yourwebsite.com')
```

### Replace this SQL when work offline
```
UPDATE wp_options SET option_value = 'http://localhost' WHERE `wp_options`.`option_id` in (1,2);
UPDATE wp_posts SET post_content = REPLACE(post_content, 'http://www.yourwebsite.com', 'http://localhost');
UPDATE wp_postmeta SET meta_value = REPLACE(meta_value, 'http://www.yourwebsite.com', 'http://localhost');
UPDATE wp_options SET option_value = REPLACE(option_value, 'http://www.yourwebsite.com', 'http://localhost')
```










### Enjoy coding!