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
    vnet_name = azurerm_virtual_network.vnet.name
    address_prefixes = [var.address_prefixes[count.index]]
    
}


resource "azurerm_subnet_network_security_group_association" "example" {
  count = length(var.subnet)
  subnet_id                 = module.subnet[count.index].id
  network_security_group_id = module.nsg[count.index].id
}

output "assoc" {
  value = azurerm_subnet_network_security_group_association.example
}