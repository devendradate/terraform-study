resource "aws_db_instance" "default" {
  identifier = "test-tb"
  allocated_storage    = var.storage_allocate
  max_allocated_storage = var.max_storage_allocate
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = var.mysql_password
  parameter_group_name = aws_db_parameter_group.default.id
  skip_final_snapshot  = true
  allow_major_version_upgrade = true
  apply_immediately = true
  availability_zone = var.az
  publicly_accessible = true
  vpc_security_group_ids = [aws_security_group.mysql.id]

  depends_on = [aws_security_group.mysql]
}
