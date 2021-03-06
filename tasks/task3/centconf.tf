 resource "azurerm_virtual_network" "vnet2" {
   name                 = "my-network2"
   address_space        = ["10.0.0.0/16"]
   location             = azurerm_resource_group.RG.location
   resource_group_name  = azurerm_resource_group.RG.name
}

 resource "azurerm_subnet" "subnet2" {
   name                 = "vmsubnet2"
   resource_group_name  = azurerm_resource_group.RG.name
   virtual_network_name = azurerm_virtual_network.vnet2.name
   address_prefixes     = ["10.0.0.0/24"]
}

 resource "azurerm_network_interface" "my-nic2" {
  name                  = "example-nic2"
  location              = azurerm_resource_group.RG.location
  resource_group_name   = azurerm_resource_group.RG.name
 
 ip_configuration {
  name                          = "internal2"
  subnet_id                     = azurerm_subnet.subnet2.id
  private_ip_address_allocation = "Dynamic"
 }
}


 


#vm

resource "azurerm_linux_virtual_machine" "vm2" {
   name                = "TFVM2"
   resource_group_name = azurerm_resource_group.RG.name
   location            = azurerm_resource_group.RG.location
   size                = "Standard_B1s"
   admin_username      = "mukhammad"
   network_interface_ids = [
     azurerm_network_interface.my-nic2.id,
    ]

    os_profile {
    computer_name  = "TFVMcent"
    admin_username = "secret"
    admin_password = "secret"
  }

    os_disk {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
   source_image_reference {
       publisher = "OpenLogic"
       offer     = "CentOS"
       sku       = "7.5"
       version   = "latest"
     }

   }
