terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

module "vpc" {
    source  = "terraform-aws-modules/vpc/aws//examples/complete-vpc"
    version = "3.14.2"
    }

module "ec2" {
  source = "./ec2"
  region = var.region
}

module "ecs" {
  source = "./ecs"
  region = var.region
}