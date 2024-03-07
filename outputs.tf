output "rg_name" {
    value = module.create_resource_group.rg_name
}

output "asp_name" {
    value = module.create_app_service_plan.asp_name
}

output "asp_id" {
  value = module.create_app_service_plan.asp_id
}

output "app_service_name" {
    value = var.app_service_name
  
}