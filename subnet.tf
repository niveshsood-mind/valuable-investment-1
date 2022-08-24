resource "azurerm_subnet" "Subnet" {
  name                 = "Test-subnet"
  resource_group_name  = azurerm_resource_group.ResourceGroup.name
  virtual_network_name = azurerm_virtual_network.VirtualNetwork.name
  address_prefixes     = ["10.1.0.0/26"]
}