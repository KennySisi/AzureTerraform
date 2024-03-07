variable "name" {
    description = "app service name"
    # No default value
}

variable "location" {
    description = "the location of the app service"
    default = "Japan East"
}

variable "rg_name" {
}

variable "asp_id" {
}