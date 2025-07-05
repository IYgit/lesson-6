# cmd: terraform output dynamodb_table_arn
output "s3_bucket_id" {
  value       = aws_s3_bucket.terraform_state.id
  description = "ID S3 бакета"
}

# cmd: terraform output s3_bucket_arn
output "s3_bucket_arn" {
  value       = aws_s3_bucket.terraform_state.arn
  description = "ARN S3 бакета"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.terraform_locks.name
  description = "Назва таблиці DynamoDB"
}

output "dynamodb_table_arn" {
  value       = aws_dynamodb_table.terraform_locks.arn
  description = "ARN таблиці DynamoDB"
}