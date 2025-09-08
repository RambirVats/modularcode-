terraform {
  backend"azurerm" {
    resource_group_name  = "om51-rg"
    storage_account_name = "namo51"
    container_name       = "tfstate51"
    key                 = "module51.tfstate"
  }
    required_providers {
        azurerm= {
        source  = "hashicorp/azurerm"
        version = "4.26.0"
        }
    }
}
provider "azurerm" {
  features {}
  subscription_id = "c05900c4-9a99-417d-878e-413b907a6035"
}