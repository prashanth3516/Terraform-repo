variable public_ip{
     default = "pipname"
}
resource "azurerm_public_ip" "example" {
  name                = var.public_ip
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"
 }
