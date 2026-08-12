variable "rg_name" {
  description = "The name of the resource group"
  type        = string
}
variable "vnet_name" {
  description = "The location of the resource group"
  type        = string
}
variable "remote_vnet_name" {
  description = "The name of the security group"
  type        = string
}

variable "vnet_id" {
  description = "The name of the first subnet"
  type        = string
}

variable "remote_vnet_id" {
  description = "The address prefixes for the first subnet"
  type        = string
}