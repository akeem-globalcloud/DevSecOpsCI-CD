variable "trail_name" {
  description = "CloudTrail trail name"
  type        = string
}

variable "s3_bucket_name" {
  description = "S3 bucket that stores CloudTrail logs"
  type        = string
}
