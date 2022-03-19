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
  access_key = "AKIARHPEFPESOBDTCQUC"
  secret_key = "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"
}