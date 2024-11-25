terraform {
  backend "azurerm" {
    key                  = var.azurerm_key
    resource_group_name  = var.azurerm_resource_group_name
    storage_account_name = var.azurerm_storage_account_name
    container_name       = var.azurerm_container_name
  }
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



