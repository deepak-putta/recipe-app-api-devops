terraform {
  backend "s3" {
    bucket = "recipe-app-api-devops-tfstate-montreal"
    key = "recipe-app.tf"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "recipe-app-api-devops-tfstate-lock"
  }
}

provider "aws" {
  region = "us-east-1"
  version = "~> 2.54.0"
}