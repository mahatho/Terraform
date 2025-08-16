terraform {
  required_providers {
    aws = {
      version = "6.0.0-beta3"
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}