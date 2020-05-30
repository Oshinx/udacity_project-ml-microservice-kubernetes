#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID
dockerpath=mikoski890/udacitylearnmirco


# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment udacitydeploycluster08 --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 
# Forward the container port to a host
kubectl create service nodeport   udacitydeploycluster08 --tcp=80:80