#!/bin/bash
echo "Deploying Application..."
docker stop devops-app || true
docker rm devops-app || true
docker run -d -p 80:80 --name devops-app iniyacloud03/dev:latest
echo "Deployment Complete!"
echo "App running at http://54.227.21.199"
