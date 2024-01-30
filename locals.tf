locals {
  count = 4
  backend_address_pool_name      = length(azurerm_virtual_network.vnet[count.index].name)-beap
  frontend_port_name             = length(azurerm_virtual_network.vnet[count.index].name)-feport
  frontend_ip_configuration_name = length(azurerm_virtual_network.vnet[count.index].name)-feip
  http_setting_name              = length(azurerm_virtual_network.vnet[count.index].name)-be-htst
  listener_name                  = length(azurerm_virtual_network.vnet[count.index].name)-httplstn
  request_routing_rule_name      = length(azurerm_virtual_network.vnet[count.index].name)-rqrt
  redirect_configuration_name    = length(azurerm_virtual_network.vnet[count.index].name)-rdrcfg


}