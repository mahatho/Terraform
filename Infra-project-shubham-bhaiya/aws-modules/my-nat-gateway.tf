resource "aws_eip" "my-eip" {
  count = length(var.cidr_private_subnet)
}
resource "aws_nat_gateway" "my-nat-gw" {
  count = length(var.cidr_private_subnet)
  subnet_id = aws_subnet.aws_jhooq_private_subnets[count.index].id
  depends_on = [ aws_eip.my-eip ]
  tags = {
    name = "MY NAT GW"
  }
}