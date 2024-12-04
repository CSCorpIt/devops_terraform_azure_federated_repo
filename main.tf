terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
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

  subscription_id = "19c90abf-d616-4f8c-b887-f0490119b05a"
  client_id       = "f9ae38b8-7b03-4817-9039-39cb4774621d"
  use_oidc        = true

  # for GitHub Actions
  oidc_request_token = var.oidc_request_token
  oidc_request_url   = var.oidc_request_url

  # for other generic OIDC providers, providing token directly
  oidc_token = var.oidc_token

  # for other generic OIDC providers, reading token from a file
  oidc_token_file_path = var.oidc_token_file_path

  tenant_id = "0dcd7d6a-ba5c-44b2-8858-b89a508cc2fd"

  features {}

}

locals {
  solution_name       = var.solution_name
  region              = var.region
  environment         = var.environment
  vnet_name           = var.vnet_name
  vnet_rg             = var.vnet_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.region
}
