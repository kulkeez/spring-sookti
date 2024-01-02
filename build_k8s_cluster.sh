#!/bin/bash
export BUILD_DATE=$(date +%d-%b-%Y)
echo "BUILD_DATE = ${BUILD_DATE}" 

# Create the k8s cluster using kind 
kind create cluster --name sookti-cluster --image kindest/node:v1.27.3

# Dislay the nodes in the cluster
kubectl get nodes -o wide