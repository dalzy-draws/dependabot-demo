provider "aws" {
  region = "eu-west-1"
}

module "iam_example_iam-account" {
  source  = "terraform-aws-modules/iam/aws//examples/iam-account"
  version = "5.38.0"
}