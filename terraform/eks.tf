module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.1"

  cluster_name                   = local.name
  cluster_endpoint_public_access = true

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.intra_subnets

  eks_managed_node_group_defaults = {
    ami_type       = "AL2_x86_64"
    instance_types = ["m5.large"]
    attach_cluster_primary_security_group = true
  }

  eks_managed_node_groups = {
    // On-demand node group for critical workloads
    ondemand-ng = {
      min_size     = 2
      max_size     = 5
      desired_size = 3

      instance_types = ["m5.large"]
      capacity_type  = "ON_DEMAND"

      tags = {
        WorkloadType = "Critical"
      }
    }

    // Spot node group for scalable workloads
    spot-ng = {
      min_size     = 2
      max_size     = 6
      desired_size = 3

      instance_types = ["t3.large"]
      capacity_type  = "SPOT"

      tags = {
        WorkloadType = "Scalable"
      }
    }
  }

  tags = local.tags
}
