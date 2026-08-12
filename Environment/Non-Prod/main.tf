module "rg" {
  source      = "../../Modules/Resource_group"
  rg_name     = var.rg_name1
  rg_location = var.rg_location1

}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../Modules/Network/VNET"

  for_each = var.vnets

  rg_name                  = each.value.rg_name
  rg_location              = each.value.rg_location
  security-group-name      = each.value.security-group-name

  subnet1_name             = each.value.subnet1_name
  subnet1_address_prefixes = each.value.subnet1_address_prefixes

  subnet2_name             = each.value.subnet2_name
  subnet2_address_prefixes = each.value.subnet2_address_prefixes

  vnet_name     = each.value.vnet_name
  address_space = each.value.address_space
}



module "vnet_peering" {
  depends_on = [module.vnet]

  source = "../../Modules/Network/VNET_peering"

  rg_name          = var.rg_name1
  vnet_name        = var.vnet_name
  remote_vnet_name = var.remote_vnet_name
  vnet_id          = module.vnet["vnet1"].vnet_id
  remote_vnet_id   = module.vnet["vnet2"].vnet_id
}