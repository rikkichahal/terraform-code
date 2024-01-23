resource "azurerm_subnet" "example" {
  count =  var.createsn ? 2 : 1
  name                 = var.subnet_name
  resource_group_name  = var.rgname
  virtual_network_name = var.vnet_name
  address_prefixes     = var.address_prefixes
}