provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

module "ec2" {
  source        = "git@github.com:paruuy/terraform-remote-module.git?ref=v0.2" # Repo of terrafom module, with tag v0.1
  app_name      = each.value.app_name
  instance_type = each.value.instance_type  
}

output "ip_address_ec2" {
  value = module.ec2.ip_address #Reference from block module "ec2"
}
