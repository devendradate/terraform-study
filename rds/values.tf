variable "vpc_id" {
  type = string
  default = "vpc-<id>"
}
variable "storage_allocate" {
  type = number
  default = 10
}
variable "max_storage_allocate" {
  type = number
  default = 100
}
variable "mysql_password" {
  type = string
  default = "<password>"
}
variable "az" {
  type = string
  default = "<az>"
}

