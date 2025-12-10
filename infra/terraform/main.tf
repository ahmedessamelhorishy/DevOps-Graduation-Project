module "vpc" {
  source       = "./modules/vpc"
  project_name = var.project_name
  az_count     = var.az_count
}

module "eks" {
  source             = "./modules/eks"
  project_name       = var.project_name
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  public_subnet_ids  = module.vpc.public_subnet_ids
  eks_version        = var.eks_version
  node_instance_type = var.node_instance_type
}

module "ec2" {
  source           = "./modules/ec2"
  project_name     = var.project_name
  vpc_id           = module.vpc.vpc_id
  vpc_cidr         = module.vpc.vpc_cidr_block
  public_subnet_id = module.vpc.public_subnet_ids[0]
  instance_type    = var.ec2_instance_type
  public_key_path  = var.public_key_path
}

module "ecr" {
  source       = "./modules/ecr"
  project_name = var.project_name
}