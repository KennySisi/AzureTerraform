provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

# module "create_app_service_plan" {
#     source = "../app_service_plan"
#     name = "test-asp3"
#     location = var.location
#     rg_name = var.rg_name
# }

resource "azurerm_linux_web_app" "appservice" {
    name = var.name
    location = var.location
    resource_group_name = var.rg_name
    service_plan_id = var.asp_id #module.create_app_service_plan.asp_id
    
    app_settings = {
      "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    }

    site_config {
    application_stack {
      docker_image_name   = "mly219blueheart/fastapi_1214:80"
      docker_registry_url = "https://index.docker.io"
    }
  }
  
}

# resource "azurerm_app_service" "appservice" {
#     name = var.name
#     location = var.location
#     resource_group_name = var.rg_name
#     app_service_plan_id = var.asp_id

#     site_config {
#       app_command_line = ""
#       linux_fx_version = "DOCKER|docker.io/mly219blueheart/fastapi_1214:80"
#     }
  
# }