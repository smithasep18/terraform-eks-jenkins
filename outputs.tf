output "cluster_name" {
  value = module.eks_al2023.cluster_name
}

output "cluster_endpoint" {
  value = module.eks_al2023.cluster_endpoint
}

output "cluster_version" {
  value = module.eks_al2023.cluster_version
}

output "vpc_id" {
  value = module.vpc.vpc_id
}