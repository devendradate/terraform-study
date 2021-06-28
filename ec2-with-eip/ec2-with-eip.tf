resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  availability_zone = var.az
  key_name = "devendra-personal"
  security_groups = ["allow_ssh"]

  depends_on = [aws_security_group.allow_ssh]

  tags = {
    Name = "HelloWorld"
  }
}

output "public_ip" {
  value = aws_eip.lb.public_ip
}


