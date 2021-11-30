terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "<region>"
  access_key = "<access-key>"
  secret_key = "<secret-key>"
}
