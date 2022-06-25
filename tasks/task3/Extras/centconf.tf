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
   name                            = "TFVM2"
   resource_group_name             = azurerm_resource_group.RG.name
   location                        = azurerm_resource_group.RG.location
   size                            = "Standard_B1s"
   admin_username                  = "secret"
   admin_password                  = "secret"
   disable_password_authentication = false
   network_interface_ids = [
     azurerm_network_interface.my-nic2.id,
    ]

    admin_ssh_key {
    username   = "secret"
    public_key = file("~/.ssh/canon.pub")
                  }
       
    os_disk {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    dynamic "source_image_reference" {
              for_each = var.source_image2
              content {
               publisher =  source_image_reference.value.publisher
               offer     =  source_image_reference.value.offer
               sku       =  source_image_reference.value.sku
               version   =  source_image_reference.value.version
                      }
                                 }
                                                  }
#extension
 resource "azurerm_virtual_machine_extension" "centosnginx" {

        name                  = "vmxter"
        virtual_machine_id    = azurerm_linux_virtual_machine.vm2.id
        type                  = "CustomScript"
        type_handler_version  = "2.0"
        publisher             = "Microsoft.Azure.Extensions"
        settings = <<SETTINGS
         {
             "commandToExecute": "sudo yum -y install epel-release; sudo yum -y update && sudo yum -y install nginx;sudo systemctl enable nginx; sudo echo 'Hello World OS Linux Ubuntu 16LTS' >> /var/www/html/index-debian.html"
         }
          SETTINGS
                                                             }

    
