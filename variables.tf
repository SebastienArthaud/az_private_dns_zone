#################
#
# COMMUN
#
#################
variable "resource_group_name" {
  type        = string
  description = "Nom du Resource Group"
}


#################
#
# DNS ZONE
#
#################
variable "private_dns_zone_name" {
  type        = string
  description = "Nom de la NAT Gateway créée"
}

variable "virtual_network_name" {
  type        = string
  description = "nom du vnet linké à la private dns zone"
}

variable "virtual_network_resource_group" {
  type        = string
  description = "resource group du vnet linké à la private dns zone"
}

variable "dns_vnet_link_name" {
  type        = string
  description = "nom du link entre la private dons zone et le vnet ciblé"
}