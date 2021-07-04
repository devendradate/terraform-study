resource "aws_efs_file_system" "foo" {
  creation_token = "my-product"

  tags = {
    Name = "MyProduct"
  }
}

resource "aws_efs_mount_target" "alpha" {
  file_system_id = aws_efs_file_system.foo.id
  subnet_id      = flatten(var.subnet_id)[0] # fetch first subnet id from subnet vars
  security_groups = [aws_security_group.efs.id]

}

resource "aws_efs_mount_target" "alpha1" {
  file_system_id = aws_efs_file_system.foo.id
  subnet_id      = flatten(var.subnet_id)[1] # fetch second subnet id from subnet vars
  security_groups = [aws_security_group.efs.id]
}

resource "aws_efs_mount_target" "alpha2" {
  file_system_id = aws_efs_file_system.foo.id
  subnet_id      = flatten(var.subnet_id)[2] # fetch third subnet id from subnet vars
  security_groups = [aws_security_group.efs.id]

}
