# Example

this project deployed via [geektr-cloud/deployer](https://github.com/geektr-cloud/deployer)

## Deploy

```bash
# update (init) project to local enviroment
# when first run, it will init data directory and secrets directory
deployer update geektr-cloud/service-template

# edit secrets files
# vim xxxxxx

# up the services
deployer up geektr-cloud/service-template
```
