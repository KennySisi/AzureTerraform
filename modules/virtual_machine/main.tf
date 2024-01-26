provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

resource "random_string" "random_str" {
  length  = 6
  special = false
  upper   = false
}


resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-rg-20240125-${random_string.random_str.result}"
  location = var.location
}
