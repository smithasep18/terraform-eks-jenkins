variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "demo-eks-cluster"
}

variable "cluster_version" {
  description = "EKS Version"
  type        = string
  default     = "1.31"
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "demo-vpc"
}