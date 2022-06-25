
variable "source_image" {

         description = "Image_source_ubuntu"
           type = list(object({
           publisher = string
           offer     = string  
           sku       = string
           version   = string  
           }))

         default = [{
           publisher = "Canonical"
           offer     = "UbuntuServer"
           sku       = "16.04-LTS"
           version   = "latest"
          }]
                         }
        
variable "source_image2" {
           
           description = "Image_source_centos"
             type = list(object({
             publisher = string
             offer     = string
             sku       = string
             version   = string
            }))
     
          default = [{
            publisher = "OpenLogic"
            offer     = "CentOS"
            sku       = "7.5"
            version   = "latest"
           }] 
                          }
