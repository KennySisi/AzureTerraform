provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

# module "random_string" {
#   source = "../random_string"
#   length = var.length
# }

resource "azurerm_resource_group" "main" {
  name     = var.name
  location = var.location
}

