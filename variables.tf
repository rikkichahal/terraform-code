variable "nsg_name" {
    type = list(string)
    default = [ "nsg1", "nsg2", "nsg3" ]
  
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


variable "subnet" {
  type = list(string)
  default = [ "subnet1","subnet2","subnet3","subnet4"]
  
}
variable "address_prefixes" {
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
