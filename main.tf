provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

module "create_resource_group" {
  source = "./modules/resource_group"
  prefix = var.prefix
  location = var.location
  length = var.length
}

