output "ami_id" {
  value = data.aws_ami.ami_id
}

output "vpc_security_group_ids" {
  value = data.aws_vpc.default_vpc
}