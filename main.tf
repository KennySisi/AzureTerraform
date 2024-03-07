provider "azurerm" {
  features {
    # resource_group {
    #   prevent_deletion_if_contains_resources = false
    # }
  }
}

module "create_resource_group" {
  source = "./modules/resource_group"
  name = var.rg_name
  location = var.location
}

module "create_app_service_plan" {
  source = "./modules/app_service_plan"
  name = var.asp_name
  location = var.location
  rg_name = module.create_resource_group.rg_name
}


module "create_app_service" {
  source = "./modules/app_service"
  name = var.app_service_name
  location = var.location
  rg_name = module.create_resource_group.rg_name
  asp_id = module.create_app_service_plan.asp_id
}
