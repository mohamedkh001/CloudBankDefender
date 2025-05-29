resource "aws_s3_bucket" "cloudbank_bucket" {
  bucket = "${var.project_name}-${var.environment}-bucket"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  logging {
    target_bucket = aws_s3_bucket.cloudbank_logs.id
    target_prefix = "log/"
  }

  tags = {
    Name        = "${var.project_name}-${var.environment}-bucket"
    Environment = var.environment
    Project     = var.project_name
  }
}

resource "aws_s3_bucket" "cloudbank_logs" {
  bucket = "${var.project_name}-${var.environment}-logs"

  force_destroy = true

  tags = {
    Name        = "${var.project_name}-${var.environment}-logs"
    Environment = var.environment
    Project     = var.project_name
  }
}
