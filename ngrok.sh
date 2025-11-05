#!/bin/bash

source ./.env

# ngrok config add-authtoken $NGROK_AUTHTOKEN

nohup ngrok http http://localhost:3333 > ngrok.log 2>&1 & echo $! > ngrok.pid

echo "ngrok started (PID $(cat ngrok.pid)). Logs: ngrok.log"