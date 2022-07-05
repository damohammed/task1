#network vars

variable "azurerm_resource_group_name" {
        default = "deploy-rg"
        }

variable "location" {
        default = "Japan East"
        }

variable "azure_virtual_network_name" {
          default = "vnetwork"
            }

variable "vnet_address_space" {
        default = "10.0.0.0/16"
        }

variable "subnet_web_api" {
        default = "web-api-subnet"
        }

variable "subnet_server" {
        default = "server-subnet"
        }

variable "subnet_cache" {
        default = "cache-subnet"
        }
#extension

resource "azurerm_virtual_machine_extension" "vmex" {

       name                  = "vmxter"
       virtual_machine_id    = azurerm_linux_virtual_machine.vm.id
       type                  = "CustomScript"
       type_handler_version  = "2.0"
       publisher             = "Microsoft.Azure.Extensions"

       settings = <<SETTINGS
        {
            "commandToExecute": "sudo yum -y install epel-release && sudo yum update;sudo yum -y install nginx; sudo systemctl enable nginx; sudo echo "hello world" >> /var/www/html/index.html"
        }
         SETTINGS
      }

#vm variables

variable "prefix" {
        default = "vm"
        }

variable "vm_size" {
    default = "Standard_B1s"
        }

variable "source_image" {
          description = "image reference"
          type = list(object({
          publisher  = string
          offer      = string
          sku        = string
          version    = string
          }))
        default = [{
         publisher = "OpenLogic"
         offer     = "CentOS"
         sku       = "7.5"
         version   = "latest"
        }]
        }

variable "os_disk_storage_account_type" {
    default = "Standard_LRS"
}

variable "os_disk_storage_caching" {
    default = "ReadWrite"
}
