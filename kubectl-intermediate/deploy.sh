#!/bin/bash

echo "Please wait a moment while we apply some deployments to the frontend namespace.."
kubectl create -f ~/label-deploy.yaml
sleep 5
