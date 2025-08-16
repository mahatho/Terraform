resource "aws_route_table" "my-public-rt" {
  count = length(aws_subnet.aws_jhooq_public_subnets)
  vpc_id = aws_vpc.my-vpc.id
  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
  }
}
resource "aws_route_table" "my-private-rt" {
  count = length(aws_subnet.aws_jhooq_private_subnets)
  vpc_id = aws_vpc.my-vpc.id
  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.my-nat-gw[count.index].id
  }
  depends_on = [ aws_nat_gateway.my-nat-gw ]
}