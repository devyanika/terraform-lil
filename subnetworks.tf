
resource "azurerm_subnet" "subnetwork1" {
  address_prefix = "10.0.1.0/24"
  name = "subnet1"
  resource_group_name = azurerm_resource_group.azy_network.name
  virtual_network_name = azurerm_virtual_network.blue_virtual_network.name
  depends_on = [azurerm_virtual_network.blue_virtual_network]
}

resource "azurerm_subnet" "subnetwork2" {
  address_prefix = "10.0.2.0/24"
  name = "subnet2"
  resource_group_name = azurerm_resource_group.azy_network.name
  virtual_network_name = azurerm_virtual_network.blue_virtual_network.name
  depends_on = [azurerm_virtual_network.blue_virtual_network]
}