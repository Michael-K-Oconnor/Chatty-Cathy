build-up:
	docker-compose up --build reverse-proxy

build:
	docker-compose build chat-service1 frontend1 reverse-proxy

up:
	docker-compose up reverse-proxy

down:
	docker-compose down

build-push:
	docker build -t michaelkoconnor/chatty-cathy-chat-service ./chat-service &&\
	docker build -t michaelkoconnor/chatty-cathy-frontend ./frontend &&\
	docker build -t michaelkoconnor/chatty-cathy-chat-reverse-proxy ./reverse-proxy &&\
	docker push michaelkoconnor/chatty-cathy-chat-service &&\
	docker push michaelkoconnor/chatty-cathy-frontend &&\
	docker push michaelkoconnor/chatty-cathy-chat-reverse-proxy 

test:
	docker-compose up --build test

travis-lint:
	travis lint ./.travis.yml

gpr:
	gpr

