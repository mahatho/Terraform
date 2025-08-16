
resource "aws_instance" "Test_match" {
  ami = "ami_id"
  instance_type = "t3.micro"
  security_groups = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "Dev"
  }
}
