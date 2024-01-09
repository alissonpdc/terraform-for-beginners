variable "apps" {
  description = "Map(string) values to create resources for multiples apps"
  type        = map(string)
  default = {
    "frontend" = "terraform-for-beginners-demo-bucket-frontend",
    "backend"  = "terraform-for-beginners-demo-bucket-backend",
    "bff"      = "terraform-for-beginners-demo-bucket-bff"
  }
}