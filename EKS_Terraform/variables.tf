variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "iam_role_name" {
  type        = string
  description = "name of the IAM role used for EKS cluster"
}

variable "eks_cluster_name" {
  type        = string
  description = "name of the EKS cluster"
}

variable "eks_cluster_version" {
  type = string
  description = "specify the verion of the eks cluster"
}

variable "nodegroup_role_name" {
  type = string
  description = "name of the IAM role used for node-group"
}

variable "nodegroup_name" {
  type = string
  description = "name of the node group"
}