## Build outside of Docker and then run in container

`sudo docker build -t demoweb .`

`sudo docker run -itd demoweb .`

`sudo docker run -itd -p 8080:8080 demoweb`

`sudo docker run -itd --name demoweb2 -p 8090:8080 demoweb`

`curl localhost:8090/greeting` - to send http request to running container

`sudo docker ps` - to see running containers

`sudo docker kill demoweb` - to stop a container

## Build and run inside Docker

`sudo docker build -t demowebbuild -f DockerfileBuild .`

`sudo docker run -itd -p 8080:8080 demowebbuild`

`sudo docker run -itd -p 8080:8080 --name demowebbuild demowebbuild`

## Dla docker compose
Budowanie obrazów
`docker compose build`

Uruchomienie kontenerów
`docker compose up`

Uruchomienie kontenerów w tle
`docker compose up -d`

Zatrzymanie kontenerów, usunięcie sieci i wolumenów
`docker compose down`
