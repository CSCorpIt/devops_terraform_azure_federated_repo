variable "clientID" {
  description = "The name of the solution or project."
  type        = string
  default     = ""

}

variable "tenantID" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = ""
}

variable "subID" {
  description = "The deployment environment (e.g., dev, test, prod)."
  type        = string
}


variable "region" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "eastus2"
}


variable "solutionSName" {
  description = "The solution name"
  type        = string
}

variable "vmSize" {
  description = "Vm Size"
  type        = string
}

variable "vmPublicKey" {
  description = "Vm's public ssh key"
  type        = string
}

variable "azurerm_resource_group_name" {
  description = "The Terraform backend state resource group"
  type        = string
  default     = "ODDA-TFSTATE-DEV-RG"
}

variable "azurerm_key" {
  description = "The Terraform backend state key."
  type        = string
  default     = "snackingnextgen-dev-comp-eastus2.tfstate"
}

variable "azurerm_storage_account_name" {
  description = "The name of the Azure storage account for the backend."
  type        = string
  default     = "oddatfstateeus2devsa"
}

variable "azurerm_container_name" {
  description = "The name of the storage container for the backend."
  type        = string
  default     = "resource-tfstate"
}