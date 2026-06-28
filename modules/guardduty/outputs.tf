output "guardduty_detector_id" {
  value = aws_guardduty_detector.this.id
}

output "guardduty_status" {
  value = aws_guardduty_detector.this.enable
}
