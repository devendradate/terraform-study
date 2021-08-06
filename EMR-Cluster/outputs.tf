output "id" {
  value = aws_emr_cluster.cluster.id
}

output "name" {
  value = aws_emr_cluster.cluster.name
}

output "master_public_dns" {
  value = aws_emr_cluster.cluster.master_public_dns
}

output "release_label" {
  value = aws_emr_cluster.cluster.release_label
}

output "s3_log_uri" {
  value = aws_emr_cluster.cluster.log_uri
}

output "applications_installed" {
  value = aws_emr_cluster.cluster.applications
}

output "ec2_attributes" {
  value = aws_emr_cluster.cluster.ec2_attributes
}

output "bootstrap_action" {
  value = aws_emr_cluster.cluster.bootstrap_action
}

output "configurations" {
  value = aws_emr_cluster.cluster.configurations
}

output "master_security_group_id" {
  value = aws_security_group.emr_master.id
}

output "slave_security_group_id" {
  value = aws_security_group.emr_slave.id
}


output "aws_s3_log_bucket" {
  value = aws_s3_bucket.emr_bucket_logs.id
}
