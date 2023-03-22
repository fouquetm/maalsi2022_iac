terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.48.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-maalsi" {
  name     = "rg-mfouquet"
  location = "West Europe"
}

output "main-rg-name" {
  value = azurerm_resource_group.rg-maalsi.name
}

output "main-rg-id" {
  value = azurerm_resource_group.rg-maalsi.id
}