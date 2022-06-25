#network

 resource "azurerm_virtual_network" "vnet" {
   name                 = "my-network"
   address_space        = ["192.168.0.0/16"]
   location             = azurerm_resource_group.RG.location
   resource_group_name  = azurerm_resource_group.RG.name
}

 resource "azurerm_subnet" "subnet" {
   name                 = "vmsubnet"
   resource_group_name  = azurerm_resource_group.RG.name
   virtual_network_name = azurerm_virtual_network.vnet.name
   address_prefixes     = ["192.168.1.0/24"]
}

 resource "azurerm_network_interface" "my-nic" {
  name                  = "nginx-interface"
  location              = azurerm_resource_group.RG.location
  resource_group_name   = azurerm_resource_group.RG.name
 
 ip_configuration {
  name                          = "internal"
  subnet_id                     = azurerm_subnet.subnet.id
  private_ip_address_allocation = "Dynamic"
  public_ip_address_id = azurerm_public_ip.ipaddr.id
   }
    depends_on = [azurerm_resource_group.RG]
}


 resource "azurerm_public_ip" "ipaddr" {
  name                  = "ip-ubuntu"
  resource_group_name   = azurerm_resource_group.RG.name
  allocation_method     = "Static" 
  location              = azurerm_resource_group.RG.location
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
  dynamic "source_image_reference" {
            for_each = var.source_image
            content {
             publisher   =  source_image_reference.value.publisher
             offer       =  source_image_reference.value.offer
             sku         =  source_image_reference.value.sku
             version     =  source_image_reference.value.version
                    }
                                   }
                                                }





