terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIARHPEFPESAYIE7DUQ"
  secret_key = "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"
}