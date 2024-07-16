# AKS Graylog Deployment

This repository provides the necessary Terraform scripts and Kubernetes manifests to deploy Graylog on Azure Kubernetes Service (AKS). 

## Repository Structure

- `main.tf`: The main Terraform configuration file that defines the resources for the AKS cluster.
- `variables.tf`: The Terraform variables file that allows you to customize the deployment.
- `outputs.tf`: The Terraform outputs file that provides the essential outputs after the deployment.

## Prerequisites

Before you begin, ensure you have the following installed on your local machine:

- [Terraform](https://www.terraform.io/downloads.html) (v1.0.0 or later)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) (v2.0 or later)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) (v1.18 or later)

## Installation

**Infrastructure Details**
- Resource Group Name: gordion-rg
- Location: North Europe
- VNet Name: gordion-vnet (10.0.0.0/16)
- Default Subnet Name: default-sn (10.0.2.0/24)
- AKS Subnet Name: aks-sn (10.0.3.0/24)
- AKS Cluster Name: gordion-aks-cluster
- Version: 1.28.3
- Application Gateway:
- Size and SKU: 2 instances, standard
- Prerequisites
- 
 **Steps**
  
   ```sh
   git clone https://github.com/kaanbozbek/AKS.git
   cd AKS
   terraform apply

