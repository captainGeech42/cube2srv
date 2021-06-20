# cube2srv

[![Docker Hub Publish](https://github.com/captainGeech42/cube2srv/workflows/Docker%20Hub%20Publish/badge.svg)](https://github.com/captainGeech42/cube2srv/actions?query=workflow%3A%22Docker+Hub+Publish%22) [![Docker Hub Image](https://img.shields.io/docker/v/captaingeech/cube2srv?color=blue)](https://hub.docker.com/repository/docker/captaingeech/cube2srv/general)

Sauerbraten: Cube 2 server via Docker

## Usage:

Read this [blog post](https://zanderwork.com/blog/hosting-a-sauerbraten-server/) for details, but tl;dr copy `server-init.tmpl.cfg` to `server-init.cfg` and make any changes you want, then run:

```
$ docker-compose build
$ docker-compose up -d
```

The `docker-compose.yml` file uses a volume to mount the `server-init.cfg` file in your current directory into the proper container path, modify as you see fit.

After a couple minutes, your server should show up in the server list in the game. If it doesn't check the logs with `docker-compose logs` and ensure that your network settings are correct (by default, ports 28785 and 28786 via both TCP and UDP).