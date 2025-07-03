#!/bin/bash
PORT=${PORT:-2002}
if command -v docker-compose &> /dev/null; then
    docker-compose build
    docker-compose up -d
elif command -v docker &> /dev/null; then
    docker compose build
    docker compose up -d
else
    echo "Docker Compose is not installed."
    exit 1
fi
