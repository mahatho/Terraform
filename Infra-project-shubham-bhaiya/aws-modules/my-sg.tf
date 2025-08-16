resource "aws_security_group" "my-sg" {
  name = "my-security-group"
  description = "This will allow SSH, Http connections and Outgoing traffic"
  ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
        from_port = 80
        to_port = 80
        protocol = "http"
        cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
  }
  vpc_id = aws_vpc.my-vpc.id
}