[![Docker Image CI](https://github.com/youonmyown/docker-in-docker-4fun/actions/workflows/docker-image.yml/badge.svg)](https://github.com/youonmyown/docker-in-docker-4fun/actions/workflows/docker-image.yml)

## How to run Docker in Docker container:
Copy Dockerfile.

Build image:
```
docker buid -t <container_name:<tag> .
```
Run image:
```
docker run -it --privileged <container_name:tag>
```
To check the functionality of docker in a container, you can run a test image:
```
docker run hello-world
```
