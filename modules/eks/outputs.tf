output "cluster_id" {
  description = "ID EKS кластера"
  value       = aws_eks_cluster.main.id
}

output "cluster_endpoint" {
  description = "Endpoint для EKS кластера"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  description = "Назва EKS кластера"
  value       = aws_eks_cluster.main.name
}

output "kubeconfig_certificate_authority_data" {
  description = "Сертифікат для підключення до кластера"
  value       = aws_eks_cluster.main.certificate_authority[0].data
}