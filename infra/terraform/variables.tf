variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name prefix for resources"
  type        = string
  default     = "devops-gp"
}

variable "eks_version" {
  description = "Kubernetes version for EKS"
  type        = string
  default     = "1.29"
}

variable "public_key_path" {
  description = "Path to your SSH public key for EC2"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}

variable "ec2_instance_type" {
  description = "Instance type for EC2 tools server"
  type        = string
  default     = "t3.micro"
}

variable "node_instance_type" {
  description = "Instance type for EKS worker nodes"
  type        = string
  default     = "t3.small"
}

variable "az_count" {
  description = "Number of Availability Zones to use"
  type        = number
  default     = 2
}