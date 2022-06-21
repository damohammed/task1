 resource "azurerm_virtual_network" "vnet" {
   name                 = "my-network"
   address_space        = ["10.0.0.0/16"]
   location             = azurerm_resource_group.RG.location
   resource_group_name  = azurerm_resource_group.RG.name
}

 resource "azurerm_subnet" "subnet" {
   name                 = "vmsubnet"
   resource_group_name  = azurerm_resource_group.RG.name
   virtual_network_name = azurerm_virtual_network.vnet.name
   address_prefixes     = ["10.0.0.0/24"]
}

 resource "azurerm_network_interface" "my-nic" {
  name                  = "example-nic"
  location              = azurerm_resource_group.RG.location
  resource_group_name   = azurerm_resource_group.RG.name
 
 ip_configuration {
  name                          = "internal"
  subnet_id                     = azurerm_subnet.subnet.id
  private_ip_address_allocation = "Dynamic"
  public_ip_address_id = azurerm_public_ip.ipaddr.id
 }
}


 resource "azurerm_public_ip" "ipaddr" {
  name                  = "ip-ubuntu"
  location              = azurerm_resource_group.RG.location
  resource_group_name   = azurerm_resource_group.RG.name
  allocation_method     = "Static" 
 }


#vm

resource "azurerm_linux_virtual_machine" "vm" {
  name                = "TFVM"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  size                = "Standard_B1s"
  admin_username      = "mukhammad"
  network_interface_ids = [
    azurerm_network_interface.my-nic.id,
  ]

  admin_ssh_key {
    username   = "mukhammad"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}

