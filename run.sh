#!/bin/bash

echo "SSH | eaut.chatbot-devcontainer"

# Bước 1: Vefify Container
if [ -n "$(docker ps -q --filter name=my-dev-container)" ]; then
    echo "Running!"
else
    echo "Stopping!"
    docker start 3eee9623aa39974456447c4f2fccbe5f3ee7e86c128081ae35d7b64cff159095
fi

# Bước 2: SSH to container
echo "Connecting to devuser@localhost:2222"
ssh devuser@localhost -p 2222

# Bước 3: Verify SSH
if [ $? -eq 0 ]; then
    echo "Successfully!"
else
    echo "Connected error!"
fi

echo "Press Enter to exit"
read