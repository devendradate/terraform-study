resource "aws_instance" "one" {
  ami           = var.ami
  instance_type = "t2.micro"
  availability_zone = "<region>-1a" # Create instance in 1a AZ
  key_name = "personal"
  security_groups = ["ec2-with-efs-sg"]

  tags = {
    Name = "HelloWorld"
  }

  depends_on = [
    aws_security_group.ec2
  ]
}

resource "aws_instance" "two" {
  ami           = var.ami
  instance_type = "t2.micro"
  availability_zone = "<region>-1b" #create instance in 1b AZ
  key_name = "personal"
  security_groups = ["ec2-with-efs-sg"]

  tags = {
    Name = "HelloWorld2"
  }

  depends_on = [
    aws_security_group.ec2
  ]
}
