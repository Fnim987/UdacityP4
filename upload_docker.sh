#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=fnim987/p4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag 0e78b9a98dfb $dockerpath:v1.0.0

# Step 3:
# Push image to a docker repository
docker push $dockerpath:v1.0.0