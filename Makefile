up:
	echo "Up all containers...."
	docker-compose up

up_d:
	echo "Up all containers with -d"
	docker-compose up -d
	
destroy:
	echo "Removing all containers...."
	docker-compose down --rmi all --volumes --remove-orphans
	docker-compose rm -v -s -f

