terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "subscription_id"
  features {}
}

resource "azurerm_resource_group" "RG" {
  name     = "my-terraform"
  location = "Japan East"
  tags = {
    Owner = "mukhammad"
 }
}
