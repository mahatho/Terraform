#EC2 variables

variable "instance_names" {
  type = list(string)
  default = [ "db","frontend","backend" ]
}
variable "image_id" {
    type = string
    default = "ami-041e2ea9402c46c32"
    description = "RHEL-9 AMI ID"
}
variable "instance_type" {
  type = string
  default = "t3.micro"
}

#SG variables

variable "sg_name" {
   type = string
   default = "allw_ssh"
 }
variable "sg_description" {
   default = "Allowing SSH connection"
 }
variable "ssh_port" {
  default = 22
}
variable "protocol" {
  default = "tcp"
}
variable "allowed_cidr" {
  type = list(string)
  default = ["0.0.0.0/0"]
}

# Common Tags

variable "common_tags" {
  default = {
    Name = "Expense"
    Environment = "Dev"
    Terraform = "true"
  }
}

#r53 variables
variable "zone_id" {
  type = string
  default = "Z06337953RUE6Q6HT1D8E"
}
 variable "domain_name" {
   default = "mohandevops.online"
 }