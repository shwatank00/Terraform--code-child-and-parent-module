vnets = {
  vnet1 = {
    rg_name                  = "shwatank-rg"
    rg_location              = "East US"
    security-group-name      = "shwatank-security-group-name"
    subnet1_name             = "shwatank-subnet1"
    subnet1_address_prefixes = ["10.0.1.0/24"]
    subnet2_name             = "shwatank-subnet2"
    subnet2_address_prefixes = ["10.0.2.0/24"]
    vnet_name                = "shwatank-vnet1"
    address_space            = ["10.0.0.0/16"]
    }, vnet2 = {
    rg_name                  = "shwatank-rg"
    rg_location              = "East US"
    security-group-name      = "shwatank-security-group-name"
    subnet1_name             = "shwatank-subnet3"
    subnet1_address_prefixes = ["10.1.1.0/24"]
    subnet2_name             = "shwatank-subnet4"
    subnet2_address_prefixes = ["10.1.2.0/24"]
    vnet_name                = "shwatank-vnet2"
    address_space            = ["10.1.0.0/16"]
  }
}


rg_name1     = "shwatank-rg"
rg_location1 = "East US"

vnet_name        = "shwatank-vnet1"
  remote_vnet_name = "shwatank-vnet2"
