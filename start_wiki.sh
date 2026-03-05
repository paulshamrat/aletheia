#!/bin/bash
# Start the Technical Wiki local server
cd /home/paul/works/aletheia
# Kill any existing server on port 8000
fuser -k 8000/tcp 2>/dev/null
# Start the new server in the background
nohup mkdocs serve -a 127.0.0.1:8000 > /dev/null 2>&1 &
xdg-open http://localhost:8000
echo "Wiki is now running at http://localhost:8000"
