# Step 4 – Pull and Run Nginx from Docker Hub

Docker Hub (https://hub.docker.com) is a public registry with thousands of ready-to-use images.

## Pull the Nginx image

```bash
docker pull nginx:latest
```{{exec}}

## Check that the image is available

```bash
docker image ls
```{{exec}}

## Run the Nginx web server

```bash
docker run -d --name ai5g_webserver -p 8080:80 nginx:latest
```{{exec}}

- `-d` — runs in detached mode (background)
- `--name ai5g_webserver` — gives the container a name
- `-p 8080:80` — maps port 8080 on the host to port 80 inside the container

## Check the container is running

```bash
docker ps
```{{exec}}

## Stop the container

```bash
docker stop ai5g_webserver
```{{exec}}

## Delete the image (forced)

```bash
docker image rm -f ai5g_app
```{{exec}}
