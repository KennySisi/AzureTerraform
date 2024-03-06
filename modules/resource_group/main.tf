# module "random_string" {
#   source = "../random_string"
#   length = var.length
# }

# resource "azurerm_resource_group" "main" {
#   name     = "${var.prefix}-rg-20240125-${module.random_string.random_str}"
#   location = var.location
# }


provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

resource "azurerm_resource_group" "main" {
  name     = "rg-20240126-1"
  location = "Japan East"
}


