** Backend Deployment for Python Flask App on Azure AKS **

This repository contains configurations and scripts to deploy a Python Flask application on Azure Kubernetes Service (AKS) using Jenkins for CI/CD.

Prerequisites
Before you begin, ensure you have the following installed/configured:

Azure CLI

Docker

Jenkins server with necessary plugins (for CI/CD)

Azure Kubernetes Service (AKS) cluster

Azure Container Registry (ACR)

Jenkins Setup

Install Jenkins Plugins:

Ensure Jenkins has plugins for Azure credentials, Kubernetes, Docker, and Git integration.

Configure Jenkins Credentials:

Add credentials for Azure (Service Principal with AKS and ACR access).

Add credentials for Docker registry (ACR).

Create Jenkins Pipeline (Jenkinsfile):

Kubernetes Manifests

Deployment:

Sample deployment.yaml to deploy Flask app.

Service:

Expose Flask app using Kubernetes service.yaml.

Ingress (optional):

Configure Ingress controller for external access.

Azure Resources
Ensure the following resources are configured:

AKS Cluster setup with required node pools.
ACR for storing Docker images.
Deployment
Clone Repository:

bash

Copy code

git clone https://github.com/your/repo.git

cd repo

Modify Kubernetes Manifests:

Update deployment.yaml and service.yaml as per your app requirements.

Configure Jenkins:

Create a new Pipeline job in Jenkins.

Link the job to this repository and point to the Jenkinsfile.

Trigger Deployment:

Push changes to your repository branch to trigger the Jenkins pipeline.

Monitor Deployment:

View Jenkins console output for build and deployment logs.
