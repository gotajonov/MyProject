variable "aws_region" {
  description = "Region for the VPC"
}
variable "key-name" {
  description = "Key pair name"
}
variable "az-psubnet" {
  description = "Availability zone of the public subnet"
}

variable "instance-type-ansible" {
  description = "EC2 instance type for ansible server"
}
variable "instance-type-jenkins" {
  description = "EC2 instance type for jenkins server"
}
variable "instance-type-k8s" {
  description = "EC2 instance type for kubernetes server"
}

variable "sg_name" {
  description = "Security group name"
}
variable "cidr-open" {
  description = "Variable for opening all requests"
}
variable "protocol" {
  description = "Security groups protocol name"
}
variable "vpc_cidr" {
  description = "CIDR for the VPC"
}
variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
}
