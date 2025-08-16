terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "mohan-terraform-state-file"
    key    = "remote-state-key"
    region = "us-east-1"
    /* use_lockfile = true -- This is used ad alternative to DyanamoDb. 
    It's called native S3 locking */
    dynamodb_table  = "remote-state-locking"
    prevent_destroy = true
  }
}
