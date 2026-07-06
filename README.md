# Azure Container Infrastructure

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat&logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat&logo=github-actions&logoColor=white)
![Azure](https://img.shields.io/badge/Azure-0078D4?style=flat&logo=microsoft-azure&logoColor=white)

Containerized web application deployed to Azure Container Instances via Terraform and GitHub Actions — zero manual steps.

## Architecture

Docker Image (Docker Hub) → GitHub Actions → Terraform → Azure Container Instance → Public IP

## What This Demonstrates

| Skill | Implementation |
|-------|---------------|
| Containerization | Custom nginx image built with Docker |
| Container registry | Image pushed to Docker Hub |
| Infrastructure as Code | ACI provisioned via Terraform |
| CI/CD automation | GitHub Actions deploys on every push |
| Serverless containers | No VM management — ACI handles everything |

## Tech Stack

| Tool | Purpose |
|------|---------|
| Docker/Podman | Build and run containers |
| Docker Hub | Store and distribute container image |
| Terraform | Provision Azure Container Instance |
| GitHub Actions | CI/CD pipeline automation |
| Azure Container Instances | Host container without managing VMs |

## How It Works

1. Custom nginx Docker image built and pushed to Docker Hub
2. Terraform provisions Azure Container Instance
3. ACI pulls image directly from Docker Hub
4. Container runs with public IP — no VM or OS management needed
5. GitHub Actions automates the entire deployment on every push

## How to Deploy

1. Fork this repository
2. Push your Docker image to Docker Hub
3. Update container_image variable with your image name
4. Add GitHub Secrets: AZURE_CLIENT_ID, AZURE_CLIENT_SECRET, AZURE_TENANT_ID, AZURE_SUBSCRIPTION_ID
5. Push to main branch — pipeline deploys automatically

## Key Concepts Demonstrated

- Containers vs VMs — why containers are faster and more portable
- Docker Hub as a container registry
- Azure Container Instances — serverless container hosting
- Terraform managing container infrastructure
- CI/CD pipeline without SSH or configuration management

## Built By

AJ (Amit Kumar) — System Administrator at Fastenal, Canada

Pursuing Cloud and Infrastructure Engineer roles in Toronto and Remote

Certifications: VCP-DCV, AZ-104, M365 Administrator Expert, SC-200

GitHub: https://github.com/AmitKJagga
LinkedIn: https://linkedin.com/in/amitkumarsysadmin
