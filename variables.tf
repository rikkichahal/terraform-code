variable "nsg_name" {
    type = list(string)
    default = [ "nsg1", "nsg2", "nsg3","nsg4" ]
  
}

variable "vnet_name" {
  type = list(string)
  default = ["mvnet", "nvnet","ovnet","pvnet"]
  
}
variable "appgw_name" {
  type = list(string)
  default = [ "","","","" ]
  
}
variable "pip" {
  type = list(string)
  default = [ "pip1","pip2","pip3","pip4" ]
  
}


# variable "subnets" {
#   description = "Map of subnets with unique identifiers"
#   type        = map(object({
#     subnet_name       = list(string)
#     address_prefixes  = list(string)
#     # vnet_name         = string
#   }))
#   default = {
#     "subnet" = {
#         subnet_name = ["subnet1" ]   
#         address_prefixes = ["10.0.1.0/24"]
#     },

#     "subnet1" = {
#         subnet_name = ["subnet2" ]   
#         address_prefixes = [ "10.0.2.0/24"]
#   }
# }
# }
variable backend_address_pool_name {
  type = list(string)
  default = ["port1","port2", "port3", "port4"]
}

variable frontend_port_name  {
  type = list(string)
  default = ["port1","port2", "port3", "port4"]

}           
  variable frontend_ip_configuration_name {
    type = list(string)
    default = ["port1","port2", "port3", "port4"]
  }

 variable http_setting_name  {
  type = list(string)
  default = ["port1","port2", "port3", "port4"]
 }            
  variable listener_name     {
    type = list(string)
  default = ["port1","port2", "port3", "port4"]
  }             
 variable request_routing_rule_name  {
  type = list(string)
  default = ["port1","port2", "port3", "port4"]
 }    
 variable redirect_configuration_name {
  type = list(string)
  default = ["port1","port2", "port3", "port4"]
 }


variable "subnet" {
  type = list(string)
  default = [ "subnet1","subnet2","subnet3","subnet4"]
  
}
variable "address_prefixes" {
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}
