resource "aws_dynamodb_table" "subhambhaiya-terra-table" {
    name = "${var.my-env}-subham-bhaiya-terra-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "id"
    attribute {
      name = "id"
      type = "S"
    }
}