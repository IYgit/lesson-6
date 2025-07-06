# Виходи з модуля S3 backend
output "s3_bucket_name" {
  description = "Назва створеного S3 бакета"
  value       = module.s3_backend.s3_bucket_id
}

output "dynamodb_table_name" {
  description = "Назва створеної DynamoDB таблиці"
  value       = module.s3_backend.dynamodb_table_name
}

# Виходи з модуля VPC
output "vpc_id" {
  description = "ID створеної VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "ID публічних підмереж"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "ID приватних підмереж"
  value       = module.vpc.private_subnet_ids
}

# Виходи з модуля ECR
output "ecr_repository_url" {
  description = "URL репозиторію ECR"
  value       = module.ecr.repository_url
}

# Виходи з модуля EKS
output "eks_cluster_endpoint" {
  description = "Endpoint EKS кластера"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_name" {
  description = "Назва EKS кластера"
  value       = module.eks.cluster_name
}

output "eks_cluster_certificate_authority" {
  description = "Сертифікат авторизації кластера"
  value       = module.eks.kubeconfig_certificate_authority_data
  sensitive   = true
}