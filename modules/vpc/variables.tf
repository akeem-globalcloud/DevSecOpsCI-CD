variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR"
  type        = string
}

variable "private_app_subnet_cidr" {
  description = "Private application subnet CIDR"
  type        = string
}

variable "private_db_subnet_cidr" {
  description = "Private database subnet CIDR"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
}

variable "create_nat_gateway" {
  description = "Whether to create a NAT Gateway and Elastic IP"
  type        = bool
  default     = false
}
