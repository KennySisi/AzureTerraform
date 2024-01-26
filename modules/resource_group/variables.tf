variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default = "kenny1"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "Japan East"
}

variable "random_string" {
  description = "a random string"
  default = "random_string"
}