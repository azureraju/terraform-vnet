# Create a resource group
resource "azurerm_resource_group" "trf-rgpn" {
  name     = var.resourcegroupname
  location = var.location
}

# Create a virtual network
  resource "azurerm_virtual_network" "trf-vnet" {
  resource_group_name = azurerm_resource_group.trf-rgpn.name  
  name                = var.vnet
  location            = azurerm_resource_group.trf-rgpn.location
  address_space       = ["10.20.0.0/16"]
}


resource "azurerm_subnet" "trf-subnet" {
  resource_group_name  = azurerm_resource_group.trf-rgpn.name
  virtual_network_name = azurerm_virtual_network.trf-vnet.name
  name                 =  "web-subnet"
  address_prefixes     = ["10.1.0.0/24"]
}
