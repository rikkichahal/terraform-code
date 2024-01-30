variable "subnet_name" {
    type = string
}

variable "rgname" {
    type = string
}

variable "address_prefixes" {
    default = ""
}
variable "createsn" {
  type = bool
  default = true
  description = " demmo "
}

variable "vnet_name" {
    type = string
}
