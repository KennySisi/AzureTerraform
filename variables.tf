variable "rg_name" {
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "Japan East"
}

variable "asp_name" {
  
}

variable "app_service_name" {
  
}

variable "os_type" {
    description = "Linux or Windows"
    default = "Linux"
}

variable "sku_name" {
    default = "S1"
}
