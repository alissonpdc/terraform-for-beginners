module "sec_group_22" {
  source       = "./sec_group"
  ingress_port = 22
}

module "sec_group_80" {
  source       = "./sec_group"
  ingress_port = 80
}