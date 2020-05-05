provider "aws" {
  region = "eu-west-1"
  profile = "Bhanu-Terraform"
  shared_credentials_file = "/home/bhanu/.aws/credentials"  
}

module "sg_module" {
  source = "./sg_module"
}

module "ec2_module" {
  sg_id = module.sg_module.sg_id_output
  ec2_name = "Ec2 Intance"
  source = "./ec2_module"
}
