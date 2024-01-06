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

# Pull outputs from previous topic "5-remote-state"
data "terraform_remote_state" "data_source_remote_state" {
  backend = "s3"
  config = {
    bucket = "terraform-for-beginners-remote-state-bucket"
    key    = "5-remote-state/terraform.tfstate"
    region = "us-east-1"
  }
}