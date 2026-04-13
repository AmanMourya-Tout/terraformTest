module "vpc" {
  source = "../../modules/vpc"

  cidr_block = var.cidr_block
  env        = var.env
}

module "ec2" {
  source = "../../modules/ec2"

  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnet_id   # ✅ AUTO CONNECT
  env           = var.env
}

#module "rds" {
 # source            = "../../modules/rds"
 # db_instance_class = var.db_instance_class
 # env               = var.env
#}

