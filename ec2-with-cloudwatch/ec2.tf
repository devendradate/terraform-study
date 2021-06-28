resource "aws_instance" "test" {
  ami           = var.ami_id
  instance_type = var.instance_type
  availability_zone = var.az
  key_name = "<key>"
  security_groups = ["allow_ssh"]
  
  depends_on = [aws_security_group.allow_ssh]

  tags = {
    Name = "HelloWorld"
  }
}
