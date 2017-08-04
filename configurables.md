Configurables
=============

#### USER group name for docker installing
* current value: Olaolu
* possible value: Any name you deem fit: flexibile
* current-location: utils/docker/docker-compose.sh
* edit-recommended: true


#### Docker registry name and label tags
* current value: {REGISTRY_NAME: registry, TAG_NAME: 2
* current-location: utils/docker/docker-registry-setup.sh  
* edit-recommended: false


#### Docker local registry images name and tags
* UBUNTU=ubuntu:16.04
* NGINX=nginx:1.13.1
* IMAGE=$NGINX
* edit-recommended: rarely
* current-location: utils/docker/pull_image_to_docker_registry.sh
* comment: "update it before every docker image pull to local repository"


#### setup-reactjs
* DEV_FRONTEND_DIR=frontend_dev/
