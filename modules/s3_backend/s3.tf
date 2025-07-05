resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_name

  # Запобігаємо випадковому видаленню бакета
  lifecycle {
    prevent_destroy = true
  }

  tags = merge(
    {
      Name        = var.bucket_name
      Environment = var.environment
    },
    var.tags
  )
}

# Вмикаємо версіонування
resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Вмикаємо шифрування за замовчуванням
resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Блокуємо публічний доступ
resource "aws_s3_bucket_public_access_block" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}