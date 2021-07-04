variable "vpc_id" {
  type = string
  default = "vpc-<id>"
}

variable "subnet_id" {
  type    = list(string)
  default = ["subnet-b5e34569", "subnet-712340d", "subnet-56yhf7d7"]
}

variable "ami" {
  type = string
  default = "ami-011c9911234567"
}
