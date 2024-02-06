variable "rgname" {
    type = string
    description = "This a resource group name"
}
variable "nsg_name" {
    type = string
    description = "The name of nsg"
}
variable "creatnsg" {
    type = bool
    default = true
    description = "(Optional) Do you want to create Network secuirty group"
  
}
# variable "nsgname" {
#     default = ""
  
# }


variable "location" {
    type = string
    description = "Location where nsg will be created"
}