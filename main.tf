provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

resource "random_string" "random_str" {
  length  = 6
  special = false
  upper   = false
}


resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-rg-20240125-${random_string.random_str.result}"
  location = var.location
}

variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default = "kenny1"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "Japan East"
}
