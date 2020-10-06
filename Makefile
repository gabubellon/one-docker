up:
	echo "Up all containers...."
	docker-compose up

up_d:
	echo "Up all containers with -d"
	docker-compose up -d

up_contaier:
	echo "Up $(CONTAINER_NAME) containers with -d"
	docker-compose up -d $(CONTAINER_NAME) 

make destroy:
	echo "Removing all containers...."
	docker-compose down --rmi all --volumes --remove-orphans
	docker-compose rm -v -s -f

