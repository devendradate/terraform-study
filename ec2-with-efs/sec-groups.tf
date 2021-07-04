resource "aws_security_group" "ec2" { #this is for EC2 instance
  name        = "ec2-with-efs-sg"
  description = "Allow ec2 inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description      = "ec2-efs sg"
    from_port        = 22
    to_port          = 22
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
    Name = "ec2-with-efs"
  }
}

resource "aws_security_group" "efs" { #this is for EFS
  name        = "security-grp-for-efs"
  description = "Allow efs inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description      = "efs sg"
    from_port        = 2049
    to_port          = 2049
    protocol         = "tcp"
   # cidr_blocks      = ["0.0.0.0/0"]
   security_groups = [aws_security_group.ec2.id]  #add security group id of EC2 instance in Source
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "efs"
  }
  depends_on = [
    aws_security_group.ec2
  ]
}
