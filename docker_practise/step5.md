# Step 5 – Run Multiple Containers at the Same Time

In this step you will use **Docker Compose** to run multiple containers simultaneously.

## 1. Install Docker Compose

```bash
apt install docker-compose -y
```{{exec}}

## 2. Create the docker-compose.yml file

```bash
cat > docker-compose.yml << 'EOF'
version: "3.8" #Specify Docker Compose version

services:
  web:  # Name of the first service (web server)
    image: nginx:latest  # Docker image to use
    ports:
      - "80:80"  # Map container port 80 to host port 80
  time_app:  # Name of the second service
    image: ai5g_app:latest  # Docker image to use
EOF
```{{exec}}

Verify the file was created correctly:

```bash
cat docker-compose.yml
```{{exec}}

## 3. Run the containers

```bash
docker-compose up -d
```{{exec}}

## 4. Check the logs to see the outputs

```bash
docker-compose logs
```{{exec}}

## 5. Check the running containers

```bash
docker ps
```{{exec}}

## 6. Visit the web server at the new port

Click the link below to open the Nginx web page:

[Access Web Server on port 80]({{TRAFFIC_HOST1_80}})

You should see the **Welcome to nginx!** page.

## 7. Stop and remove all containers

```bash
docker-compose down
```{{exec}}
