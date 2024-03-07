variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "Japan East"
}

variable "name" {
  description = "resource group name"
}


#terraform apply -var="prefix=kenny" -var="length=3" -var="current_date=20240306" -auto-approve