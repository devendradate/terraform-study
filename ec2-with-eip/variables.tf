variable "ami_id" {
  description = "ID of AMI to use"
  type        = string
  default     = "<ami-id>"
}

variable "instance_type" {
  description = "Type of an instance"
  type        = string
  default     = "t2.micro"
}

variable "az" {
  type        = string
  default     = "<az-name>"
}

variable "vpc_id" {
  type        = string
  default     = "<vpc-id>"
}
