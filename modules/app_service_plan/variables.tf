variable "name" {
    description = "app service plan name"
    # no default value
}

variable "location" {
    description = "app service plan location"
    default = "Japan East"
}

variable "rg_name" {
    description = "resource group name of the asp"
    # no default value
}

variable "os_type" {
    description = "Linux or Windows"
    default = "Linux"
}

variable "sku_name" {
    default = "S1"
}

