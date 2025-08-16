resource "aws_db_instance" "myrds" {
  engine              = "MySql"
  engine_version      = "8.0.42"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  storage_type        = "gp2"
  identifier          = "my-db"
  username            = "admin"
  password            = "password!123"
  skip_final_snapshot = true
  tags = {
    name = "myrds"
  }
}