resource "azurerm_virtual_network" "terraform-group" {
  name                = "terra-gr-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.terraform-group.location
  resource_group_name = azurerm_resource_group.terraform-group.name
}

resource "azurerm_subnet" "terraform-group" {
  name                 = "intsubnet"
  resource_group_name  = azurerm_resource_group.terraform-group.name
  virtual_network_name = azurerm_virtual_network.terraform-group.name
  address_prefixes     = ["10.0.0.0/24"]
}

resource "azurerm_public_ip" "terraform-group" {
  name                    = "terraform-group-machine1"
  location                = azurerm_resource_group.terraform-group.location
  resource_group_name     = azurerm_resource_group.terraform-group.name
  allocation_method       = "Static"
}
