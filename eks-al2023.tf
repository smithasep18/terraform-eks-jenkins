module "eks_al2023" {

  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name = local.name

  kubernetes_version = "1.31"

  addons = {
    coredns = {}

    eks-pod-identity-agent = {
      before_compute = true
    }

    kube-proxy = {}

    vpc-cni = {
      before_compute = true
    }
  }

  vpc_id = module.vpc.vpc_id

  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {

    example = {

      instance_types = ["t3.small"]

      ami_type = "AL2023_x86_64_STANDARD"

      min_size = 1

      max_size = 1

      desired_size = 1

    }

  }

  tags = local.tags

}