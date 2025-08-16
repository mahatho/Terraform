resource "aws_dynamodb_table" "subhambhaiya-terra-table" {
    name = "subham-bhaiya-terra-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "id"
    attribute {
      name = "id"
      type = "S"
    }

}