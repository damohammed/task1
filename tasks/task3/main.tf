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

resource "azurerm_virtual_machine_extension" "vmexter" {
                              
      name                  = "vmxt"
      virtual_machine_id    = azurerm_linux_virtual_machine.vm.id
      type                  = "CustomScript"
      type_handler_version  = "2.0"
      publisher             = "Microsoft.Azure.Extensions"

      settings = <<SETTINGS
       {
           "commandToExecute": "sudo apt -y install httpd && sudo systemctl start httpd; sudo apt -y install docker.io; echo '<h1><center>Hello World</center></h1> <h1><center>OS Linux Ubuntu 16LTS</h1></center>' index.html; sudo mv index.nginx-debian.html /var/www/html/; sudo apt -y install docker.io" 
       }
        SETTINGS
     }


resource "azurerm_resource_group" "RG" {
  name     = "nginx-installer"
  location = "Japan East"
}


resource "azurerm_network_security_group" "allowedports" {
   name = "allowedports"
   resource_group_name = azurerm_resource_group.RG.name
   location = azurerm_resource_group.RG.location

   security_rule {
       name = "http"
       priority = 100
       direction = "Inbound"
       access = "Allow"
       protocol = "Tcp"
       source_port_range = "*"
       destination_port_range = "80"
       source_address_prefix = "*"
       destination_address_prefix = "*"
   }

   security_rule {
       name = "https"
       priority = 200
       direction = "Inbound"
       access = "Allow"
       protocol = "Tcp"
       source_port_range = "*"
       destination_port_range = "443"
       source_address_prefix = "*"
       destination_address_prefix = "*"
    }

security_rule {
       name = "ssh"
       priority = 300
       direction = "Inbound"
       access = "Allow"
       protocol = "Tcp"
       source_port_range = "*"
       destination_port_range = "22"
       source_address_prefix = "*"
       destination_address_prefix = "*"
   }
}
