variable "environment" {
  description = "Середовище розгортання"
  type        = string
  default     = "dev"
}

variable "cluster_name" {
  description = "Назва EKS кластера"
  type        = string
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "Версія Kubernetes"
  type        = string
  default     = "1.29"
}

variable "vpc_id" {
  description = "ID VPC де буде створено кластер"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "node_group_name" {
  description = "Назва групи вузлів"
  type        = string
  default     = "main"
}

variable "node_group_instance_types" {
  description = "Тип інстансів для групи вузлів"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "node_group_desired_size" {
  description = "Бажана кількість вузлів"
  type        = number
  default     = 2
}

variable "node_group_min_size" {
  description = "Мінімальна кількість вузлів"
  type        = number
  default     = 1
}

variable "node_group_max_size" {
  description = "Максимальна кількість вузлів"
  type        = number
  default     = 3
}