# web portfolio
- source .env
- create database -> run script
- ./manage.py migrate --run-syncdb
- docker-compose up -> to run the project

include these in /etc/mysql/my.cnf

[mysqld]
character-set-server=utf8

[mysql]
default-character-set=utf8

[client]
default-character-set=utf8


Login into Docker container with docker exec -it mysql_id /bin/bash and run apt-get update
Then run apt-get install vim apt-get install locales
Run dpkg-reconfigure locales and select 384 for ro_RO.UTF-8
Open ~/.bashrc and add
export LANG=ro_RO.utf8

export LANGUAGE=ro_RO.utf8

export LC_ALL=ro_RO.utf8

Exit the shell and restart the container -> docker restart container_id