variable sshname{
     default = "sshkey"
}
resource "azurerm_ssh_public_key" "example" {
  name                = var.sshname
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  public_key          = file("~/.ssh/id_rsa.pub")
}
