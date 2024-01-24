resource "azurerm_network_security_group" "example" {
  count = 3
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.rgname
}