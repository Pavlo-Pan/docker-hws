resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }

  lifecycle {
    ignore_changes = [
      lifecycle_rule,
      acceleration_status,
      server_side_encryption_configuration,
      versioning
    ]
  }
}
