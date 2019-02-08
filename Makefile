build-run:
	docker-compose up --build reverse-proxy
	# docker-compose up --build chat-service1 chat-service2

build:
	docker-compose build chat-service1

run:
	docker-compose up reverse-proxy
	# docker-compose up chat-service1 chat-service2

down:
	docker-compose down

test:
	docker-compose up --build test

travis-lint:
	travis lint ./.travis.yml

gpr:
	gpr

