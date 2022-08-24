resource "azurerm_virtual_network" "VirtualNetwork" {
  name                = "Test-vnet"
  address_space       = ["10.1.0.0/24"]
  location            = azurerm_resource_group.ResourceGroup.location
  resource_group_name = azurerm_resource_group.ResourceGroup.name
}