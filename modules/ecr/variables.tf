variable "repository_name" {
  description = "Назва ECR репозиторію"
  type        = string
  default     = "my-app"
}

variable "environment" {
  description = "Середовище розгортання"
  type        = string
  default     = "dev"
}

variable "image_tag_mutability" {
  description = "Налаштування мутабельності тегів"
  type        = string
  default     = "MUTABLE"
}

variable "scan_on_push" {
  description = "Увімкнення автоматичного сканування при завантаженні"
  type        = bool
  default     = true
}