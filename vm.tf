resource "azurerm_windows_virtual_machine" "VirtualMachine" {
  name                = "Test-window-vm"
  resource_group_name = azurerm_resource_group.ResourceGroup.name
  location            = azurerm_resource_group.ResourceGroup.location
  size                = "Standard_F2"
  admin_username      = "azure-window-vm"
  admin_password      = "AzureAdmin@1234"
  network_interface_ids = [
    azurerm_network_interface.NIC.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}