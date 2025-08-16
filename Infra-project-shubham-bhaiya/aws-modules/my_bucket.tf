resource "aws_s3_bucket" "my-bucket" {
    bucket = "${var.my-env}-mohan-subhambhaiya-terraform"
    tags = {
      Name = "${var.my-env}-mohan-subhambhaiya-terraform"
      environment = var.my-env
    }
}
 resource "aws_s3_bucket_versioning" "bucket-versioning" {
    bucket = aws_s3_bucket.my-bucket.id
    versioning_configuration {
      status = "Enabled"
    }
 }