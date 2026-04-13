resource "aws_instance" "app" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "${var.env}-server"
  }
}

output "instance_id" {
  value = aws_instance.app.id
}
