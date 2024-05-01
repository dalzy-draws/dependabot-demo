terraform {
  required_version = ">= 0.14.11, < 2.0.0"
}

variable "region" {
  type = string
}

provider "aws" {
  region = var.region
}

provider "tls" {
}

module "iam_example_iam-account" {
  source  = "terraform-aws-modules/iam/aws//examples/iam-account"
  version = "3.0.0"
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "3.0.1"

  bucket = "my-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }
}

module "s3_bucket_2" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "3.2.4"

  bucket = "my-s3-bucket-2"
  acl    = "private"

  versioning = {
    enabled = true
  }
}
