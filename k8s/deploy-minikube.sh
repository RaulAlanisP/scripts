#!/usr/bin/env bash
set -e

# apuntar docker a minikube
eval $(minikube docker-env)

# build docker image
#docker build -t ms-cat-offer-service:latest .

# aplicar k8s
kubectl apply -f k8s/ms-cat-offer-services.yaml

# abrir servicio
minikube service ms-cat
