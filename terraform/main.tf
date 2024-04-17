terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }

    tls = {
      source  = "hashicorp/tls"
      version = ">=3.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}

provider "tls" {
}

module "iam_example_iam-account" {
  source  = "terraform-aws-modules/iam/aws//examples/iam-account"
  version = "3.0.0"
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "3.2.4"

  bucket = "my-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }
}