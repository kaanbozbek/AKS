variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "gordion-rg"
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
  default     = "North Europe"
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "gordion-vnet"
}

variable "default_subnet_name" {
  description = "The name of the default subnet"
  type        = string
  default     = "default-sn"
}

variable "aks_subnet_name" {
  description = "The name of the AKS subnet"
  type        = string
  default     = "aks-sn"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "gordion-aks-cluster"
}

variable "aks_cluster_version" {
  description = "The version of the AKS cluster"
  type        = string
  default     = "1.28.3"
}

