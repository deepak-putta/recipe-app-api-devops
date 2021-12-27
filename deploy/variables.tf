variable "prefix" {
  default = "raad"
}

variable "project" {
  default = "recipe-app-api-devops"
}

variable "contact" {
  default = "deepak-putta.com"
}

variable "db_username" {
  description = "username for RDS postgres instance"
}

variable "db_password" {
  description = "password for RDS postgres instance"
}

variable "bastion_key_name" {
  default = "recipe-app-api-devops-bastion"
}