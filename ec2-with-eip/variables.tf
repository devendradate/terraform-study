variable "ami_id" {
  description = "ID of AMI to use"
  type        = string
  default     = "ami-011c99152163a87ae"
}

variable "instance_type" {
  description = "Type of an instance"
  type        = string
  default     = "t2.micro"
}

variable "az" {
  type        = string
  default     = "ap-south-1a"
}

variable "vpc_id" {
  type        = string
  default     = "vpc-6370bf08"
}