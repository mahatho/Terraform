output "my_ec2_ip" {
  value = aws_instance.Practice-server.public_ip
}
output "default-vpc-id" {
  value = aws_default_vpc.default-vpc.id
}
output "my-sg-details" {
  value = aws_security_group.SSH-Firewall.id
}