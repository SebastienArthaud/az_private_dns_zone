resource "azurerm_private_dns_zone" "private_dns_zone" {
  name                = var.private_dns_zone_name
  resource_group_name = var.resource_group_name
}


resource "azurerm_private_dns_zone_virtual_network_link" "name" {
  resource_group_name   = var.resource_group_name
  virtual_network_id    = data.azurerm_virtual_network.vnet.id
  name                  = var.dns_vnet_link_name
  private_dns_zone_name = azurerm_private_dns_zone.private_dns_zone.name

}