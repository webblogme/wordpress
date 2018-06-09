main: start
down: stop

start:
	docker-compose up -d
	#gulp

sh:
	docker exec -it rin bash

stop:
	docker-compose down