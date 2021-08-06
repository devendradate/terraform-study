variable "project" {
  default = "devd-emr"
}

variable "environment" {
  default = "prod"
}

variable "name" {
  default = "emr-demo-test"
}

variable "vpc_id" {
  default = "<id>"
}

variable "release_label" {
  default = "emr-5.33.0"
}

variable "applications" {
  default = ["Hadoop", "Hive", "Hue", "Mahout", "Pig"]
  type    = list(string)
}

variable "key_name" {
  default = "demo"
}

variable "master_instance_type" {
  default = "m4.large"
}

variable "master_instance_count" {
  default = 1
}

variable "master_group_name" {
   default = "MasterInstanceGroup"
}

variable "core_instance_type" {
   default = "m4.large"
}

variable "core_instance_name" {
  default = "CoreInstanceGroup"
}

variable "core_instance_count" {
  default = 1
}

variable "aws_region" {
  default = "<region>"
}

variable "profile" {
}

variable "s3_bucket" {
  default = "<bukcet-name>"
}

variable "subnet_id" {
  default = "<id>"
}

variable "bootstrap_uri" {
  default = "s3://ap-south-1.elasticmapreduce/bootstrap-actions/run-if"
}

variable "bootstrap_name" {
  default = "Run if"
}
