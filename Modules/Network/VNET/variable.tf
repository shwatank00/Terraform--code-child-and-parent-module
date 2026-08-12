variable "rg_name" {
  type = string
}

variable "rg_location" {
  type = string
}
variable "security-group-name" {
  type = string
}   

variable "subnet1_name" {
  type = string
}
variable "subnet1_address_prefixes" {
  type = list(string)
}
variable "subnet2_name" {
  type = string
}
variable "subnet2_address_prefixes" {
  type = list(string)
}
variable "vnet_name" {
  type = string
}
variable "address_space" {
  type = list(string)
}
