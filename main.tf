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
    count = length(var.nsg_name)

    source =  "./modules/nsg"
    nsg_name = var.nsg_name[count.index]
    rgname = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location

}

module "subnet" {
    for_each = length(var.subnets)

    source = "./modules/subnet"
    subnet_name = each.value.subnet_name[count.index]
    rgname = azurerm_resource_group.rg.name
    address_prefixes = each.value.address_prefixes[count.index]
    vnet_name = azurerm_virtual_network.vnet.name
}