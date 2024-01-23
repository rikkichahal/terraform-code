resource "azurerm_network_security_group" "example" {
  count = var.creatnsg ? 1 : 0
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.rgname
}