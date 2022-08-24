resource "azurerm_network_interface" "NIC" {
  name                = "Test-nic"
  location            = azurerm_resource_group.ResourceGroup.location
  resource_group_name = azurerm_resource_group.ResourceGroup.name

  ip_configuration {
    name                          = "Test-ip"
    subnet_id                     = azurerm_subnet.Subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}