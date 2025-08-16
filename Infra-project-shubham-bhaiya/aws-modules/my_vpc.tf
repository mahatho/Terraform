resource "aws_vpc" "my-vpc" {
  cidr_block = var.vpc_id
  tags = {
    name = "vpc.us-east-1"
  }
}