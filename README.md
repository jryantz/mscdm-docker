# Docker (Microsoft CDM - NGINX)

[Microsoft CDM](https://github.com/microsoft/CDM)

The CDM files are omitted from this repository.  To run, clone the CDM repository into this folder along side the Dockerfile.

## How to Run

**Run with Dockerfile**

Running with the Dockerfile creates an image with the CDM folder copied to the container.

- Build
    - `docker build -t webserver .`
- Run
    - `docker run -it --rm -d -p 9000:8080 --name web webserver`

**Run with Command**

Alternatively, running the one command maps the local folder on your file system to a folder internal to the container.  If you make changes to a file in the folder, those changes will be immediately reflected in the container and on the served website.

- Change directory into the folder with this README.
- Run
    - `docker run -it --rm -d -p 9000:8080 --name web -v $PWD/CDM/docs:/usr/share/nginx/html nginxinc/nginx-unprivileged:1.21-alpine`

## References

[Container, Docker Hub](https://hub.docker.com/r/nginxinc/nginx-unprivileged)
[Container, GitHub](https://github.com/nginxinc/docker-nginx-unprivileged)
