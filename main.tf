module "vpc" {
  source = "../Amazon-Terraform-Infrastructure/vpc"
}

module "ec2" {
  source = "../Amazon-Terraform-Infrastructure/EC2"
  instance_type = "t2.nano"
  instance_name = "product-search-instance"
  subnet_id     = module.vpc.subnet1_id
}










