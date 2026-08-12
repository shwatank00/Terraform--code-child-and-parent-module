variable "vnets" {
  description = "Map of virtual networks"

  type = map(object({
    rg_name             = string
    rg_location         = string
    security-group-name = string

    subnet1_name             = string
    subnet1_address_prefixes = list(string)

    subnet2_name             = string
    subnet2_address_prefixes = list(string)

    vnet_name     = string
    address_space = list(string)
  }))
}

variable "rg_name1" {
  type = string
}
variable "rg_location1" {
  type = string
}

variable "remote_vnet_name" {
  type = string
}

variable "vnet_name" {
  type = string
}