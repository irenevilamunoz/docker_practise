#!/bin/bash

# Create the app folder and the Python application
mkdir -p /root/app

cat > /root/app/app.py << 'EOF'
from datetime import datetime
print("Current time:", datetime.now())
EOF

echo "Environment ready!"
