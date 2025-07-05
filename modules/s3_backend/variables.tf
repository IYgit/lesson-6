variable "bucket_name" {
  description = "Назва S3 бакету для Terraform стейту"
  type        = string
}

variable "environment" {
  description = "Назва середовища (наприклад: dev, prod)"
  type        = string
}

variable "tags" {
  description = "Теги для ресурсів"
  type        = map(string)
  default     = {}
}

variable "dynamodb_table_name" {
  description = "Назва таблиці DynamoDB для блокування стейту"
  type        = string
}

variable "read_capacity" {
  description = "Потужність читання для таблиці DynamoDB"
  type        = number
  default     = 1
}

variable "write_capacity" {
  description = "Потужність запису для таблиці DynamoDB"
  type        = number
  default     = 1
}