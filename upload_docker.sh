#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=namlai000/udacity-devops-microservices

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag udacity-devops-microservices $dockerpath:1.0

# Step 3:
# Push image to a docker repository
docker push $dockerpath:1.0