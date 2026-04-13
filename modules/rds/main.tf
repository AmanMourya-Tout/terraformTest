resource "aws_db_instance" "db" {
  allocated_storage = 20
  engine            = "mysql"
  instance_class    = var.db_instance_class
  username          = "admin"
  password          = "password123"
  skip_final_snapshot = true
}

output "db_endpoint" {
  value = aws_db_instance.db.endpoint
}
