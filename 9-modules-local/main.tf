terraform {
  required_version = "~> 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      managed-by = "terraform"
      repo       = "terraform-for-beginners"
    }
  }
}

module "sec_group_22" {
  source       = "./sec_group"
  ingress_port = 22
}

module "sec_group_80" {
  source       = "./sec_group"
  ingress_port = 80
}