variable "environment" {
  description = "Середовище розгортання"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR блок для VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Зони доступності для підмереж"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

variable "public_subnet_cidrs" {
  description = "CIDR блоки для публічних підмереж"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR блоки для приватних підмереж"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}