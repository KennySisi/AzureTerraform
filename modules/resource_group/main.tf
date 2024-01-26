resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-rg-20240125-${var.random_string}"
  location = var.location
}
