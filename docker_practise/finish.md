# Congratulations! 🎉

You have completed the Docker Containers Practice. Here is a summary of what you learned:

✅ Created a Python application inside a container  
✅ Written a Dockerfile to define a custom image  
✅ Built a Docker image with `docker build`  
✅ Run containers in normal and detached mode  
✅ Pulled an image from Docker Hub  
✅ Run a web server (Nginx) with port mapping  
✅ Managed containers with `docker ps`, `docker stop`, and `docker logs`  

## Key commands reference

| Command | Description |
|---|---|
| `docker build -t name:tag .` | Build an image from a Dockerfile |
| `docker image ls` | List available images |
| `docker run image` | Run a container |
| `docker run -d image` | Run a container in detached mode |
| `docker run -p 8080:80 image` | Run with port mapping |
| `docker ps` | List running containers |
| `docker logs <id>` | Show container logs |
| `docker stop <name>` | Stop a running container |
| `docker pull image` | Pull an image from Docker Hub |
| `docker image rm -f image` | Remove an image |
