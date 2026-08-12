
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  address_space       = var.address_space

  subnet {
    name             = var.subnet1_name
    address_prefixes = var.subnet1_address_prefixes
  }

  subnet {
    name             = var.subnet2_name
    address_prefixes = var.subnet2_address_prefixes
  }


}