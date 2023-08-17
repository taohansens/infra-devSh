.PHONY: start

start:
	docker network create database-network || true
	docker-compose up -d

stop:
	echo "Stopping databases"
	docker network rm database-network || true
	docker-compose down