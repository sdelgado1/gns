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
}

module "ec2" {
  source = "./ec2"
  region = var.region
}

module "ecs" {
  source = "./ecs"
  region = var.region
}