#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID
dockerpath=mikoski890/udacitylearnmirco

# Step 2
# Run a Docker Hub container with kubernetes
kubectl run udacity-project-ml-microservice-kubernetes-pod\
    --image=$dockerpath\
    --port=80 --labels app=udacity-project-ml-microservice-kubernetes-pod


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to host
kubectl port-forward ml-udacitylearnmirco-pod 80:8080
