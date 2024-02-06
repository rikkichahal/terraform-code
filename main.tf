resource "azurerm_resource_group" "rg" {
    name = "rg"
    location = "westus"
  
}

resource "azurerm_virtual_network" "vnet" {

    count = length(var.vnet_name)
    name = var.vnet_name[count.index]
    location = "eastus"
    address_space = [var.address_prefixes[count.index]]
    resource_group_name = azurerm_resource_group.rg.name
}

module "nsg" {
    # count = length(var.nsg_name)

    source =  "./modules/nsg"
    count  = length(var.nsg_name) 
    nsg_name = var.nsg_name[count.index]
    rgname = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location

}

module "subnet" {

    source = "./modules/subnet"
    count = length(var.subnet)
    subnet_name = var.subnet[count.index]
    rgname = azurerm_resource_group.rg.name
    vnet_name = var.vnet_name[count.index]
    address_prefixes = [var.address_prefixes[count.index]]
    
}


resource "azurerm_subnet_network_security_group_association" "example" {
  count = length(var.subnet)
  subnet_id                 = module.subnet[count.index].id
  network_security_group_id = module.nsg[count.index].id
}


resource "azurerm_public_ip" "example" {
  count = length(var.pip)
  name                = var.pip[count.index]
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Dynamic"
}

#Application gateway for balance the load and routing 
resource "azurerm_application_gateway" "network" {
  count = length(var.vnet_name)
  name                = var.appgw_name[count.index]
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  sku {
    name     = "Standard_v2"
    tier     = "Standard_v2"
    capacity = 2
  }

  gateway_ip_configuration {
    name      = "my-gateway-ip-configuration"
    subnet_id = module.subnet[count.index].id
  }

  frontend_port {
    name = local.frontend_port_name[count.index]
    port = 80
  }

  frontend_ip_configuration {
    name                 = local.frontend_ip_configuration_name[count.index]
    public_ip_address_id = azurerm_public_ip.example[count.index].id
  }

  backend_address_pool {
    name = local.backend_address_pool_name[count.index]
  }

  backend_http_settings {
    name                  = local.http_setting_name[count.index]
    cookie_based_affinity = "Disabled"
    path                  = "/path1/"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 60
  }

  http_listener {
    name                           = local.listener_name[count.index]
    frontend_ip_configuration_name = local.frontend_ip_configuration_name[count.index]
    frontend_port_name             = local.frontend_port_name[count.index]
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = local.request_routing_rule_name[count.index]
    priority                   = 9
    rule_type                  = "Basic"
    http_listener_name         = local.listener_name[count.index]
    backend_address_pool_name  = local.backend_address_pool_name[count.index]
    backend_http_settings_name = local.http_setting_name[count.index]
  }

  tags = {
    description = "application gatewway"
  }
}



