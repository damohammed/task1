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
