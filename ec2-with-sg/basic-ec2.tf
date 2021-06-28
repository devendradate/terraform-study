#basic terraform script for ec2 instance creation

#create instance

resource "aws_instance" "first-instance" {
  ami           = "<ami-id>"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  availability_zone = "<az-name>"
  instance_initiated_shutdown_behavior = "terminate"
  key_name = "<key-name>"
  security_groups = ["allow_ssh"]
  
  depends_on = [aws_security_group.allow_ssh]
  tags = {
    Name = "first-instance"
  }
}


#Show outputs

output "instance_ip" {
  value = aws_instance.first-instance.public_ip
}

output "security_groups" {
  value = aws_security_group.allow_ssh.id
}
