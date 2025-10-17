module "dev-app" {
  source         = "./aws-modules"
  my-env         = "dev"
  instance_type  = "t3.micro"
  instance_count = 1
  ami_id         = "ami-084a7d336e816906b"
}

module "stg-app" {
  source         = "./aws-modules"
  my-env         = "stg"
  instance_type  = "t2.medium"
  instance_count = 2
  ami_id         = "ami-084a7d336e816906b" # change according to the requirement
}
module "prd-app" {
  source         = "./aws-modules"
  my-env         = "prd"
  instance_type  = "t2.large"
  instance_count = 3
  ami_id         = "ami-084a7d336e816906b" # change according to the requiremen
} 