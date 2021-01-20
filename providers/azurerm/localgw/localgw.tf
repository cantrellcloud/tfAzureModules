#================================================================================
#
# LOCALGW.TF

resource "azurerm_local_network_gateway" "prem" {
  name                = var.localgw_name
  resource_group_name = var.resource_group
  location            = var.location
  gateway_address     = var.gateway_address
  address_space       = var.address_space
}

output "localgw_id" {
  value = azurerm_local_network_gateway.prem.id
}
output "localgw_name" {
  value = azurerm_local_network_gateway.prem.name
}