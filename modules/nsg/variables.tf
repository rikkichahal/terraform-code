variable "rgname" {
    type = string
}
variable "nsg_name" {
    type = string
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
    type = string
}