# Step 1 – Create the Python Application

First, create a folder for our application:

```bash
mkdir app && cd app
```{{exec}}

Now create a Python script called `app.py` that displays the current time:

```bash
cat > app.py << 'EOF'
from datetime import datetime
print("Current time:", datetime.now())
EOF
```{{exec}}

Verify the file was created correctly:

```bash
cat app.py
```{{exec}}

You should see the Python code printed on the screen.
