# DevOps Terraform Azure Federated Repo

## Overview
This repository provides a framework for managing Azure infrastructure using **Terraform** with **GitHub Actions**. It leverages **federated identity** for secure and scalable authentication without relying on long-lived credentials.

## Features
- **Infrastructure as Code (IaC)**: Define and deploy Azure resources using Terraform.
- **Federated Authentication**: Use OpenID Connect (OIDC) for secure authentication between GitHub Actions and Azure.
- **CI/CD Automation**: Automate resource deployment and management through GitHub Actions workflows.

## Prerequisites
1. **Azure Account**: Ensure you have an active Azure subscription.
2. **GitHub Repository**: The repository must have OIDC integration enabled for secure authentication.
3. **Terraform**: Install Terraform CLI for local development and testing.
4. **Azure CLI**: Install for local testing and authentication setup.

## Repository Structure
- `main.tf`: Contains the core Terraform configuration for provisioning resources.
- `variables.tf`: Defines input variables for resource customization.
- `outputs.tf`: Specifies outputs for resources created.
- `.github/workflows/`: Contains CI/CD workflows for automating deployments.
