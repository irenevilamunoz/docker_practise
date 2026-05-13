# Step 3 – Build and Run the Docker Image

## Build the image

Run the following command to build the Docker image from the Dockerfile:

```bash
docker build -t ai5g_app:latest .
```{{exec}}

- `docker build` — builds the image
- `-t ai5g_app:latest` — names the image `ai5g_app` with the tag `latest`
- `.` — uses the current directory as the build context

## Check available images

```bash
docker image ls
```{{exec}}

You should see `ai5g_app` listed.

## Run the container

```bash
docker run ai5g_app:latest
```{{exec}}

You should see the current time printed in the terminal.

## Run the container in detached mode

```bash
docker run -d ai5g_app:latest
```{{exec}}

The container runs in the background. To check its output use:

```bash
docker logs $(docker ps -lq)
```{{exec}}
