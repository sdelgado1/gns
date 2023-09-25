resource "aws_vpc" "vpc-test" {
  cidr_block = var.cidr_vpc
  vpc_id     = module.vpc.vpc_id
  tags = {
      Name   = "gns-test-vpc"
  }
}

resource "aws_subnet" "public-subnet-01" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "10.82.0.128/28"
  availability_zone = "us-west-1a"
  map_customer_owned_ip_on_launch = true
}

resource "aws_subnet" "public-subnet-02" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "10.82.0.144/28"
  availability_zone = "us-west-1a"
  map_customer_owned_ip_on_launch = true
}

resource "aws_subnet" "public-subnet-03" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "10.82.0.160/28"
  availability_zone = "us-west-1a"
  map_customer_owned_ip_on_launch = true
}

resource "aws_internet_gateway" "gns-test" {
  vpc_id = module.vpc.vpc_id
}

resource "aws_route_table" "second_rt" {
    vpc_id = module.vpc.vpc_id
 route {
   cidr_block = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.gns-test.id
 }
}

resource "aws_security_group" "sg-test" {
  name  = "sg-test-tf"
  name_prefix = "association-vpc"
  vpc_id = module.vpc.vpc_id
}

