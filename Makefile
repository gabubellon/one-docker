build:
	echo "Building all containers...."
	docker-compose build 

build_image:
	echo "Building $(IMAGE_NAME)"
	docker-compose build $(IMAGE_NAME) 

up:
	echo "Up all containers...."
	docker-compose up

up_d:
	echo "Up all containers with -d"
	docker-compose up -d

up_container:
	echo "Up $(IMAGE_NAME) containers with -d"
	docker-compose up -d $(IMAGE_NAME) 

down:
	echo "Down all containers...."
	docker-compose down
	
destroy:
	echo "Removing all containers...."
	docker-compose down --rmi all --volumes --remove-orphans
	docker-compose rm -v -s -f

