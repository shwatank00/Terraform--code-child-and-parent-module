resource "azurerm_virtual_network_peering" "peering1" {
  name                      = "peer1to2"
  resource_group_name       = var.rg_name
  virtual_network_name      = var.vnet_name
  remote_virtual_network_id = var.remote_vnet_id
}

resource "azurerm_virtual_network_peering" "peering2" {
  name                      = "peer2to1"
  resource_group_name       = var.rg_name
  virtual_network_name      = var.remote_vnet_name
  remote_virtual_network_id = var.vnet_id
}