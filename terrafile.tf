provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

module "ec2" {
  source        = "git@github.com:paruuy/terraform-remote-module.git?ref=v0.2" # Repo of terrafom module, with tag v0.1
  app_name      = each.value.app_name
  instance_type = each.value.instance_type
  for_each      = var.projeto # Iterate with this variable (tyoe map) and use with the variables above
}

output "ip_address_ec2" {
  # Output with list = module.ec2[*].ip_address
  # Output simple instance = module.ec2.ip_address
  # Output with MAP variable = values(module.ec2)[*].ip_address
  value = values(module.ec2)[*].ip_address #Reference from block module "ec2"
}
