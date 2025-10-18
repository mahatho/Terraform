resource "aws_instance" "Test_VM" {
  instance_type   = "t3.micro"
  count           = 2
  ami             = "ami-00354acb6e3508fd0"
  security_groups = [aws_security_group.my_sg.id]
}
resource "aws_security_group" "my_sg" {
  name = "my-security-group"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "SSH"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name       = "allow-ssh-connection"
    created_by = "Mohan Anna"
  }
}