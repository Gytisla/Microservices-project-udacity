#!/usr/bin/env bash

# Deploys application to Kubernetes cluster

# This is your Docker ID/path
 dockerpath=gytisl/projectlocal

# Run the Docker Hub container with kubernetes
kubectl run projectlocal --image=$dockerpath:latest

# Step 3:
kubectl get pods

# Step 4:
kubectl wait --for=condition=ready pod --all
kubectl port-forward pod/projectlocal 8000:80

