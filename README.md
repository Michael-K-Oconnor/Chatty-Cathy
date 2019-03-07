# ChattyCathy Main
This repository contains a docker-compose file used to orchestrate the various containers that make up the ChattyCathy application to allow for easier development of each service.

## Motivation

ChattyCathy is a full stack web application that serves as a sandbox for personal exploration of different software development techniques and practices. This application has a microservice architecture with seperate services to serve React.js client-side code and Node.js backend services handling API requests with an NGINX reverse-proxy routing incoming requests.

## Installation and Setup

This repository does not contain any of the functional code for the ChattyCathy application, instead it is meant to be used to be able to easily initialize the services that make up ChattyCathy. In order to do so, clone this repository and run the following command to initialize all containers required to run the ChattyCathy app locally. Note that several of the containers included in the docker-compose file require .env files which are not currently publically available

```bash
docker-compose up
```

## Built With

- Docker

## Related

[chatty-cathy-main](https://github.com/Michael-K-Oconnor/chatty-cathy-main.git)
- Contains docker-compose file used to initalize all containers of the ChattyCathy app locally

[chatty-cathy-reverse-proxy](https://github.com/Michael-K-Oconnor/chatty-cathy-reverse-proxy.git)
- Contains NGINX reverse-proxy which routes all request for ChattyCathy app either to either service which serves client-side code or to appropriate backend service

[chatty-cathy-frontend](https://github.com/Michael-K-Oconnor/chatty-cathy-frontend.git)
- Contains NGINX proxy which servers the client-side code for the ChattyCathy app. The client is written using React.js and bundled using Webpack

[chatty-cathy-chat-service](https://github.com/Michael-K-Oconnor/chatty-cathy-chat-service.git)
- Contains projects service for the ChattyCathy app, which consists of a Node.js webserver that connects to a Postgres database and implements a Pub/Sub pattern using Redis
