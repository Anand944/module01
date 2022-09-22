
resource "azurerm_storage_account" "example" {
  name                     = "${lower(var.base_name)}storage01"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}