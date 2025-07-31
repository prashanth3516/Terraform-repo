variable subnet{
     default = "subnet123"
}
variable subaddressspace{
     default = ["10.0.0.0/24"]
	 type = list(string)
}
resource "azurerm_subnet" "example" {
  name                 = var.subnet
  resource_group_name  = var.rgname
  virtual_network_name = var.vnet
  address_prefixes     = var.subaddressspace
 }
