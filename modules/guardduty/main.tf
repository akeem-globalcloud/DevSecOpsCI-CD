resource "aws_guardduty_detector" "this" {

  enable = true

  tags = {
    Name        = "${var.environment}-${var.project_name}-guardduty"
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = "Terraform"
    Compliance  = "HIPAA"
  }
}

####################################################
# S3 Protection
####################################################

resource "aws_guardduty_detector_feature" "s3_protection" {

  detector_id = aws_guardduty_detector.this.id

  name   = "S3_DATA_EVENTS"
  status = var.enable_s3_protection ? "ENABLED" : "DISABLED"
}

####################################################
# Runtime Monitoring
####################################################

resource "aws_guardduty_detector_feature" "runtime_monitoring" {

  detector_id = aws_guardduty_detector.this.id

  name   = "RUNTIME_MONITORING"
  status = var.enable_runtime_monitoring ? "ENABLED" : "DISABLED"
}

####################################################
# Malware Protection
####################################################

resource "aws_guardduty_detector_feature" "malware_protection" {

  detector_id = aws_guardduty_detector.this.id

  name   = "EBS_MALWARE_PROTECTION"
  status = var.enable_malware_protection ? "ENABLED" : "DISABLED"
}

####################################################
# EKS Protection
####################################################

resource "aws_guardduty_detector_feature" "eks_protection" {

  detector_id = aws_guardduty_detector.this.id

  name   = "EKS_AUDIT_LOGS"
  status = var.enable_eks_protection ? "ENABLED" : "DISABLED"
}
