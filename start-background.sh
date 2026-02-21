#!/usr/bin/env bash
# Start the Shivam server in the background. Logs go to server.log.
# To stop: pkill -f "node server.js" or kill $(lsof -ti:2018)
cd "$(dirname "$0")"
nohup node server.js >> server.log 2>&1 &
echo $! > .server.pid
echo "Server started (PID $(cat .server.pid)). Log: server.log"
echo "Open http://localhost:2018"
echo "To stop: kill $(cat .server.pid)"
