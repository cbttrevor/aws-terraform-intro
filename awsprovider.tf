terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-west-1"
}