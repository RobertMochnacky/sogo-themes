# sogo-themes
SOGo themes for web mail client used in mailcow dockerized

Created by mailcow official documentation - https://docs.mailcow.email/manual-guides/SOGo/u_e-sogo/#apply-custom-sogo-theme

**How to install**
-------------------
Download theme to /opt/mailcow-dockerized/data/conf/sogo/

```
cd /opt/mailcow-dockerized/data/conf/sogo/
wget https://raw.githubusercontent.com/RobertMochnacky/sogo-themes/main/dark-red/custom-theme.css
```
Update or create /opt/mailcow-dockerized/docker-compose.override.yml:

```
services:
  sogo-mailcow:
    volumes:
      - ./data/conf/sogo/custom-theme.css:/usr/lib/GNUstep/SOGo/WebServerResources/css/theme-default.css:z
```
Restart containers:
```
cd /opt/mailcow-dockerized/ && docker compose restart memcached-mailcow sogo-mailcow
```
Recreate containers:
```
cd /opt/mailcow-dockerized/ && docker compose up -d
```
Restart your browser and clear the cache CTRL+F5
