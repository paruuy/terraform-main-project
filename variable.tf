variable "hash_commit" {
  type = string
  default = "806d52dafe9b7fddbc4f0d2d41086ed3cfa02a44"
  description = "Hash commit of specific aws_ami (linixtips image)"
}

variable "name" {
  type = string
  description = "Testing interpolation (String Template)"
  default = ""
}

variable "projeto" {
  type = map
  description = "Map of project. terrafile iterates with these values and create the instances"
  default = {
    projeto1 = {
      app_name = "projeto1"
      instance_type = "t2.micro"
    },
    projeto1 = {
      app_name = "projeto2"
      instance_type = "t2.micro"
    }
  }
}