resource "aws_security_group" "allow_ssh" {
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
    name       = "Allow_SSH"
    created_by = "Mohan Bhimavarapu"
  }

}
resource "aws_instance" "Test" {

  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type          = var.instance_type
  tags                   = var.tags
}

#So this null resource will help in not creating ec2 instance instaed it will exec prit msg
resource "null_resource" "null_resource_example" {
  triggers = {
    id = aws_instance.Test.id
  }
  provisioner "local-exec" {
    command = "echo Hello World"
  }
}