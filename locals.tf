locals {

  backend_address_pool_name      = var.vnet_name
  frontend_port_name             = var.vnet_name
  frontend_ip_configuration_name = var.vnet_name
  http_setting_name              = var.vnet_name
  listener_name                  = var.vnet_name
  request_routing_rule_name      = var.vnet_name
  redirect_configuration_name    = var.vnet_name
}