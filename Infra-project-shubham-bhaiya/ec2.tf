resource "aws_default_vpc" "default-vpc" {
    
}
resource "aws_security_group" "SSH-Firewall" {
    name = "Allowing SSH connection to EC2"
    vpc_id = aws_default_vpc.default-vpc.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"] # this allows incoming SSH connection
    }

    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
resource "aws_instance" "Practice-server" {
   ami = "ami-084a7d336e816906b"
   security_groups = [aws_security_group.SSH-Firewall.name]
   instance_type = "t3.micro"
   tags = {
        name = "Terra-automate"
   }
}