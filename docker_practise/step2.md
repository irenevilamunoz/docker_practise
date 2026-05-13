# Step 2 – Create the Dockerfile

Now create the `Dockerfile` inside the `app` folder:

```bash
cat > Dockerfile << 'EOF'
FROM python:3.8
WORKDIR /app
COPY app.py .
CMD ["python", "app.py"]
EOF
```{{exec}}

Let's review what each line means:

| Instruction | Description |
|---|---|
| `FROM python:3.8` | Base image — uses the official Python 3.8 image |
| `WORKDIR /app` | Sets the working directory inside the container |
| `COPY app.py .` | Copies our script into the container |
| `CMD ["python", "app.py"]` | Command to run when the container starts |

Verify the Dockerfile was created:

```bash
cat Dockerfile
```{{exec}}
