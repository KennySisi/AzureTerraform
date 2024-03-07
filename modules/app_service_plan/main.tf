provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

resource "azurerm_service_plan" "appserviceplan" {
  name = var.name
  location = var.location
  resource_group_name = var.rg_name
  os_type = var.os_type
  sku_name = var.sku_name
}