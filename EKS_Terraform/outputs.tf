output "eks_cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "iam_role_name" {
  value = aws_iam_role.example.name
}

output "eks_version" {
    value = aws_eks_cluster.eks_cluster.version
}

output "node_group_name" {
    value = aws_eks_node_group.example.node_group_name
}

output "node_group_capacity" {
    value = aws_eks_node_group.example.capacity_type
}

output "node_group_disk_size" {
    value = aws_eks_node_group.example.disk_size
}