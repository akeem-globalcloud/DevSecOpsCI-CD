variable "aws_region" {
  description = "AWS deployment region"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "kms_key_alias" {
  description = "KMS Alias"
  type        = string
  default     = "alias/aws/s3"
}
