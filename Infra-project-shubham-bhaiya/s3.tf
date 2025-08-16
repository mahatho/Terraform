resource "aws_s3_bucket" "my-bucket" {
    bucket = "mohan-subhambhaiya-terraform"
    tags = {
      Name = "mohan-subhambhaiya-terraform"
    }
}
 resource "aws_s3_bucket_versioning" "bucket-versioning" {
    bucket = aws_s3_bucket.my-bucket.id
    versioning_configuration {
      status = "Enabled"
    }
 }