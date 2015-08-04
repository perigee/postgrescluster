#!/bin/bash
###############################
# Options: post for postgreSQL
###############################

case $1 in 
    post* )
	echo 'creating postgres database node ...' 
	echo -n 'container name:'
	read pgname
	echo -n 'postgreSQL port mapping:'
	read pgport
	docker create -ti --name $pgname -p $pgport:5432 -v /home/jh/docker_repo:/home/docker_repo postgres_img:v9.3 /bin/bash;;
    pgpool ) echo 'pgpool ' $2;;
esac 