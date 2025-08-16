terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
data "aws_ami" "AMI" {
  most_recent = "true"
  owners = [973714476881]
  
}

output "aws_ami" {
  value = data.aws_ami.AMI.name
}

data "aws_vpc" "default" {
  tags = {
    Name = "Default"
  }
}

output "aws_vpc" {
  value = data.aws_vpc.default.id
}

output "aws_vpc_cidr" {
  value = data.aws_vpc.default.owner_id
}

resource "aws_instance" "Test" {
  ami = data.aws_ami.AMI.id
  instance_type = "t3.micro"
  tags = {
    Name = "Testing Machine"
  }
}