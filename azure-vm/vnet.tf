variable vnet{
     default = "vnet123"
}
variable addressspace{
     default = ["10.0.0.0/16"]
	 type = list(string)	 
}
resource "azurerm_virtual_network" "example" {
  name                = var.vnet
  location            = var.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.addressspace
}
