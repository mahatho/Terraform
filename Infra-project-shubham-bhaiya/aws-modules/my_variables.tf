variable "my-env" {
  description = "This is the environment where i create the infra"
  type = string
}
variable "ami_id" {
  description = "This is the AMI id for instance"
  type = string
}
variable "instance_type" {
  description = "This is the type of instance for EC2"
  type = string
}
variable "instance_count" {
   description = "This is the count of instance for EC2"
  type = number
}
variable "vpc_id" {
  type = string
  default = "10.0.0.0/16"
}
variable "cidr_public_subnet" {
  type = list(string) 
  default = ["10.0.1.0/24","10.0.2.0/24"]
}
variable "cidr_private_subnet" {
  type = list(string) 
  default = ["10.0.3.0/24","10.0.4.0/24"]
}
variable "us_availability_zone" {
  type = list (string)
  default = [ "us-east-1a", "us-east-1b" ]
}