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

}