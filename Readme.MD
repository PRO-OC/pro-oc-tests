# PRO-OC-Tests


## Run composed docker images

```
sudo docker build -t pro-oc-tests .
```

```
DOCKER_BUILDKIT=1 COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_DEFAULT_PLATFORM=linux/amd64 sudo docker-compose up --build --remove-orphans
```

## Prerequizity

Vytvořit soubor .env s následujícími konstantami:

```
CLIENT_BROWSER_PORT=10001
VZP_POINT_PROXY_PORT=10002
VZP_B2B_PROXY_PORT=10003
DZS_PROXY_PORT=10004
ENCRYPT_KEY=43214321432143214321432143214321
```