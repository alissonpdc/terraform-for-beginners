terraform {
  required_version = "~> 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
      # Must receive 2 different aws providers
      configuration_aliases = [aws.provider_1, aws.provider_2]
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      managed-by = "terraform"
      repo       = "terraform-for-beginners"
      region     = "us-east-1"
    }
  }
}
