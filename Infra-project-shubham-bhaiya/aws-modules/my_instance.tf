resource "aws_instance" "Practice-server" {
   ami = var.ami_id
   instance_type = var.instance_type
   tags = {
        name = "${var.my-env}-Terra-automate"
   }
}