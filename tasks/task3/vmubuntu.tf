resource "azurerm_network_interface" "terraform-group" {
  name                = "terraform-group-nic"
  location            = azurerm_resource_group.terraform-group.location
  resource_group_name = azurerm_resource_group.terraform-group.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.terraform-group.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.terraform-group.id
  }
}

resource "azurerm_linux_virtual_machine" "terraform-group" {
  name                = "terraform-group-machine1"
  resource_group_name = azurerm_resource_group.terraform-group.name
  location            = azurerm_resource_group.terraform-group.location
  size                = "Standard_B1s"
  admin_username      = "user"
  network_interface_ids = [
    azurerm_network_interface.terraform-group.id,
  ]

  admin_ssh_key {
    username   = "user"
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
