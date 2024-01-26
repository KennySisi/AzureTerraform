provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

module "random_string" {
  source = "./modules/random_string"
  length = var.length
}

module "create_resource_group" {
  source = "./modules/resource_group"
  prefix = var.prefix
  location = var.location
  random_string = module.random_string
}

