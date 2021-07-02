resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.example.name
  node_group_name = "example"
  instance_types = ["t2.micro"]
  node_role_arn   = aws_iam_role.example2.arn
  subnet_ids = ["subnet-b5eerf4f9", "subnet-76123e30d", "subnet-bc45rf7d7"]

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1

  }


remote_access {
  ec2_ssh_key = "keypersonal"
}

  depends_on = [
    aws_iam_role_policy_attachment.example-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.example-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.example-AmazonEC2ContainerRegistryReadOnly,
  ]
}
