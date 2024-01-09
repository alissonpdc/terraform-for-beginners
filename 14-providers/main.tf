terraform {
  required_version = "~> 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

# Provider default
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

# Alternative provider, can be referenced by its "alias"
provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
  default_tags {
    tags = {
      managed-by = "terraform"
      repo       = "terraform-for-beginners"
      region     = "us-east-2"
    }
  }
}

# Alternative provider, can be referenced by its "alias"
provider "aws" {
  alias  = "oregon"
  region = "us-west-2"
  default_tags {
    tags = {
      managed-by = "terraform"
      repo       = "terraform-for-beginners"
      region     = "us-west-2"
    }
  }
}