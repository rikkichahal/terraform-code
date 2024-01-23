variable "rgname" {
  
}
variable "nsg_name" {
  
}
variable "creatnsg" {
    type = bool
    default = true
    description = "(Optional) Do you want ot create Network secuirty group"
  
}
variable "nsgname" {
    default = ""
  
}

variable "location" {
  
}