# cube2srv
Sauerbraten: Cube 2 server via Docker

## Usage:

Read this blog post (link TBD) for details, but put a `server-init.cfg` in the root directory of the repo, and run these commands:

```
$ docker-compose build
$ docker-compose up -d
```

After a couple minutes, your server should show up in the server list in the game. If it doesn't check the logs with `docker-compose logs` and ensure that your network settings are correct (by default, ports 28785 and 28786 via both TCP and UDP).

## Info

Auth: https://github.com/vasyahuyasa/remod-sauerbraten/wiki/Server-Auth