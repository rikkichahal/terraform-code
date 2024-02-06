# nsg for demo purpose to generate docs of code
resource "azurerm_network_security_group" "example" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.rgname
}