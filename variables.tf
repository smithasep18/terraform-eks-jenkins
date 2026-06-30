variable "aws_region" {

  type = string

  default = "us-east-1"

}

variable "cluster_name" {

  type = string

  default = "demo-eks"

}

variable "cluster_version" {

  type = string

  default = "1.31"

}

variable "vpc_name" {

  type = string

  default = "demo-vpc"

}