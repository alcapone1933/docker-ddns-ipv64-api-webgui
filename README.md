# docker-ddns-ipv64-api-webgui

[![Build Status](https://shields.cosanostra-cloud.de/drone/build/alcapone1933/docker-ddns-ipv64-api-webgui?logo=drone&server=https%3A%2F%2Fdrone.docker-for-life.de)](https://drone.docker-for-life.de/alcapone1933/docker-ddns-ipv64-api-webgui)
[![Build Status Branch Master](https://shields.cosanostra-cloud.de/drone/build/alcapone1933/docker-ddns-ipv64-api-webgui/master?logo=drone&label=build%20%5Bbranch%20master%5D&server=https%3A%2F%2Fdrone.docker-for-life.de)](https://drone.docker-for-life.de/alcapone1933/docker-ddns-ipv64-api-webgui/branches)
[![Docker Pulls](https://shields.cosanostra-cloud.de/docker/pulls/alcapone1933/ddns-ipv64-api-webgui?logo=docker&logoColor=blue)](https://hub.docker.com/r/alcapone1933/ddns-ipv64-api-webgui/tags)
![Docker Image Version (latest semver)](https://shields.cosanostra-cloud.de/docker/v/alcapone1933/ddns-ipv64-api-webgui?sort=semver&logo=docker&logoColor=blue&label=dockerhub%20version)

API DDNS IPV64.NET Web GUI https://ipv64.net/dyndns_updater_api.php

Danke für die Unterstützung :pray: @[Serpensin](https://github.com/Serpensin) für das python script

&nbsp;

### Docker CLI

```bash
docker run -d \
  -p 5000:5000 \
  -e TZ=Europe/Berlin \
  -e DOMAIN_API=123456787654321234567876543 \
  -e TABELLE_BREITE=30 \
  --name ddns-ipv64-api-webgui
  --restart=always \
  alcapone1933/ddns-ipv64-api-webgui:latest
```

### Docker Compose

```yaml
version: "3.9"
services:
  app:
    image: alcapone1933/ddns-ipv64-api-webgui:latest
    container_name: ddns-ipv64-api-webgui
    restart: always
    ports:
      - 5000:5000
    environment:
      - TZ=Europe/Berlin
      - DOMAIN_API=123456787654321234567876543
      - TABELLE_BREITE=30
```