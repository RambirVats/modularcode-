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
  subscription_id = "15a5294d-bf43-4301-914e-3af5e2295b0b"
}