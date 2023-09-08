terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

module "vpc" {
  source = "./vpc"
  region = var.region
  azs    = ["us-west-1a"]
}

module "ec2" {
  source = "./ec2"
  region = var.region
  azs    = ["us-west-1a"]
}

module "ecs" {
  source = "./ecs"
  region = var.region
  azs    = ["us-west-1a"]
}