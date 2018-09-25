# Example

## Deploy

```bash
# source deploy script first
source <(wget -qO- https://raw.githubusercontent.com/geektr-cloud/service-template/master/deploy.sh)`

# update (init) project to local enviroment
example::update

# when first run this init data directory and secrets directory
example::init-data
example::init-secrets

# edit secrets files
# vim xxxxxx

# up the services
example::up
```

## Backup

```bash
source /srv/geektr.cloud/example/deploy.sh

example::backup-secrets
example::backup-data
```

## How I deploy my docker service

I use a user named yumemi to manage all my docker sevices.

The `/srv` directory is owned by yumemi.

`/srv`'s sub directories are used as namespace, for example: `geektr.cloud`, `geektr.me`, `deaf-mutes.us`

Every docker service cost two or three directories.

In this project, `example` stores the project code, I use git to update this directory. `example.data` stores active data created by service or upload by manager or CI system. `example.secrets` stores the secrets data like password or private key.

```bash
/srv/geektr.cloud
│
├── example                 
│   ├── conf
│   ├── data
│   ├── secrets
│   ├── deploy.sh
│   └── docker-compose.yml
├── example.data
│   ├── ...
│   └── ...
└── example.secrets
    └── ...
```
