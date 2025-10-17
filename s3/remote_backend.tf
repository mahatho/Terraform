terraform {
  backend "s3" {
    bucket             = "mohan-devops-s3-practice-bucket"
    key                = "s3setup/terraform.tfstate"
    region             = "ap-south-1"
    dynamodb_table = "tf-state-locking"
    encrypt            = true
  }
}
