#!/bin/bash


# echo "Creating the volume..."

# kubectl apply -f ./kubernetes/persistent-volume.yml
# kubectl apply -f ./kubernetes/persistent-volume-claim.yml


# echo "Creating the database credentials..."

# kubectl apply -f ./kubernetes/secret.yml


# echo "Creating the postgres deployment and service..."

# kubectl create -f ./kubernetes/postgres-deployment.yml
# kubectl create -f ./kubernetes/postgres-service.yml



echo "Creating the flask deployment and service..."
# kubectl create -f ./kubernetes/namespace.yaml
kubectl apply -f ./kubernetes/flask-deployment.yml
kubectl apply -f ./kubernetes/flask-service.yml
# kubectl apply -f ./kubernetes/flask-ingress.yml

echo "Creating the frontend deployment and service..."
# kubectl create -f ./kubernetes/namespace.yaml
kubectl apply -f ./kubernetes/frontend-deployment.yml
kubectl apply -f ./kubernetes/frontend-service.yml
# kubectl apply -f ./kubernetes/flask-ingress.yml


# echo "Adding the ingress..."

minikube addons enable ingress
kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission
kubectl apply -f ./kubernetes/ingress.yml


# echo "Creating the vue deployment and service..."

# kubectl create -f ./kubernetes/vue-deployment.yml
# kubectl create -f ./kubernetes/vue-service.yml
