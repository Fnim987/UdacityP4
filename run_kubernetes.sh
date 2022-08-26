#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=fnim987/p4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy p4 --image=$dockerpath:v1.0.0

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/p4-7cbcc69dc8-fr289 --address 0.0.0.0 8000:8080