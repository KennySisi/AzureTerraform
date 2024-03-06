resource "random_string" "main" {
  length  = var.length
  special = false
  upper   = false
}
