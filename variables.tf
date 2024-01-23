variable "nsg_name" {
    type = list(string)
    default = [ "nsg1", "nsg2" ]
  
}

variable "subnet_name" {
    type = list(string)
    default = [ "subnet1", "subnet2" ]
  
}
variable "nsgname" {
    default = "subnet-main"
  
}

variable "address_prefixes" {
    type = list(string)
    default = [ "10.0.1.0/24", "10.0.2.0/24" ]
  
}