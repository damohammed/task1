#network vars

variable "azurerm_resource_group_name" {
        default = "RG"
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

#vm variables

variable "vm_size" {
     default = "Standard_B1s"
         }

variable "prefix" {
        default = "vm"
        }

variable "admin_username" {
    default = "user"
}

variable "admin_password" {
    default = "secret"
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

