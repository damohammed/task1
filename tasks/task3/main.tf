terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "sub_id"
  features {}
}

resource "azurerm_resource_group" "terraform-group" {
  name     = "terra-g"
  location = "Japan East"
}
