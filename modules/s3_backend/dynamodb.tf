resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.dynamodb_table_name
  billing_mode = "PROVISIONED"

  # Налаштовуємо потужності читання/запису
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  # Хеш-ключ - це обов'язкове поле для DynamoDB
  hash_key = "LockID"

  # Визначаємо атрибут LockID як строковий тип
  attribute {
    name = "LockID"
    type = "S"
  }

  # Додаємо теги
  tags = merge(
    {
      Name        = var.dynamodb_table_name
      Environment = var.environment
    },
    var.tags
  )
}