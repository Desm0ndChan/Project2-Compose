#ISEC6000 Assessment 2
.SILENT: 
.PHONY: build

build:
	docker compose -f ./docker-compose.yml build

up: build
	docker compose -f ./docker-compose.yml up -d

stop:
	docker compose -f ./docker-compose.yml stop

debug:
	docker exec -it jenkins bash

delete:
	docker compose -f ./docker-compose.yml down

#use with care
clean: delete
	docker container prune -f
	docker image prune -f
	docker volume prune -f
	docker system prune -f 