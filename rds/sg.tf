resource "aws_security_group" "mysql" {
  name        = "mysql"
  description = "Allow mysql inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description      = "mysql from VPC"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "mysql"
  }
}