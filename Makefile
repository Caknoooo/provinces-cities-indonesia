up: 
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build

ex-mysql:
	docker exec -it mysql bash

start-serivce:
	sudo service mysql start || true

stop-serivce:
	sudo service mysql stop || true

restart-serivce:
	sudo service mysql restart || true