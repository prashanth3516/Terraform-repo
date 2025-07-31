variable rgname{
     default = "terraformrg"
}
variable location{
     default = "East US"
}
resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
} 
