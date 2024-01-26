resource "random_string" "random_str" {
  length  = var.length
  special = false
  upper   = false
}
