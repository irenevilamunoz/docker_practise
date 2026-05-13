docker pull nginx:latest
`````````````{{exec}}

## Check that the image is available

````````````bash
docker image ls
```````````{{exec}}

## Run the Nginx web server

``````````bash
docker run -d --name ai5g_webserver -p 8080:80 nginx:latest
`````````{{exec}}

- `-d` — runs in detached mode (background)
- `--name ai5g_webserver` — gives the container a name
- `-p 8080:80` — maps port 8080 on the host to port 80 inside the container

## Check the container is running

````````bash
docker ps
```````{{exec}}

## Visit the web server

Click the link below to open the Nginx web page in your browser:

[Access Web Server]({{TRAFFIC_HOST1_8080}})

You should see the **Welcome to nginx!** page.

## Stop the container

``````bash
docker stop ai5g_webserver
`````{{exec}}

## Delete the image (forced)

````bash
docker image rm -f ai5g_app
```{{exec}}
