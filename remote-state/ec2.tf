resource "aws_instance" "server" {
  ami                    = "ami-084a7d336e816906b"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_my_ssh.id]
  tags = {
    Name = "Practice-server"
  }
}
resource "aws_security_group" "allow_my_ssh" {
  name        = "allow_ssh"
  description = "Allow all SSH connections"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name       = "Allow_MY_SSH_Connection"
    created_by = "Mohan Bhimavarapu"
  }

}
