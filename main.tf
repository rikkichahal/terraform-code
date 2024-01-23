resource "azurerm_resource_group" "rg" {
    name = "rg"
    location = "eastus"
  
}

resource "azurerm_virtual_network" "vnet" {
    name = "vnet"
    location = "eastus"
    address_space = ["10.0.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name
  
}

module "nsg" {
    source =  "./modules/nsg"
    nsg_name = var.nsg_name
    rgname = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location

}

module "subnet" {
    source = "./modules/subnet"
    subnet_name = var.subnet_name
    rgname = azurerm_resource_group.rg.name
    address_prefixes = var.address_prefixes
    vnet_name = azurerm_virtual_network.vnet.name
  
}