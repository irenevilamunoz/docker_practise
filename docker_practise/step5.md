# Step 5 – Run Multiple Containers at the Same Time

In this step you will use **Docker Compose** to run multiple containers simultaneously.

## 1. Install Docker Compose

```bash
apt install docker-compose -y
```{{exec}}

## 2. Go back to the app folder

```bash
cd ~/app
```{{exec}}

## 3. Create the docker-compose.yml file

```bash
cat > docker-compose.yml << 'COMPOSEEOF'
version: "3.8"

services:
  web:
    image: nginx:latest
    ports:
      - "80:80"
  time_app:
    image: ai5g_app:latest
    build: .
COMPOSEEOF
```{{exec}}

- `web` — runs the Nginx web server on port 80
- `time_app` — uses the local `ai5g_app:latest` image built in Step 3, using `build: .` so it builds it locally instead of pulling from Docker Hub

Verify the file:

```bash
cat docker-compose.yml
```{{exec}}

## 4. Run the containers

```bash
docker-compose up -d
```{{exec}}

## 5. Check the logs to see the outputs

```bash
docker-compose logs
```{{exec}}

## 6. Check the running containers

```bash
docker ps
```{{exec}}

## 7. Visit the web server

Click the link below to open the Nginx web page:

[Access Web Server on port 80]({{TRAFFIC_HOST1_80}})

You should see the **Welcome to nginx!** page.

## 8. Stop and remove all containers

```bash
docker-compose down
```{{exec}}
