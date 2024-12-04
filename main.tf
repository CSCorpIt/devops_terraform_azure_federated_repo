terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }


  backend "azurerm" {
    key                  = "terra-state"
    resource_group_name  = "DefaultResourceGroup-EUS"
    storage_account_name = "terraformstagh"
    container_name       = "terradev"
    use_oidc             = true                                   # Can also be set via `ARM_USE_OIDC` environment variable.
    client_id            = "f9ae38b8-7b03-4817-9039-39cb4774621d" # Can also be set via `ARM_CLIENT_ID` environment variable.
    subscription_id      = "19c90abf-d616-4f8c-b887-f0490119b05a" # Can also be set via `ARM_SUBSCRIPTION_ID` environment variable.
    tenant_id            = "0dcd7d6a-ba5c-44b2-8858-b89a508cc2fd" # Can also be set via `ARM_TENANT_ID` environment variable.
  }

}




provider "azurerm" {

  subscription_id = var.subID
  client_id       = var.clientID
  tenant_id       = var.tenantID
  use_oidc        = true

  features {}

}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.region
}
