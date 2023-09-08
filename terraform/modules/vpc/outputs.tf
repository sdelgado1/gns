output "vpc_id" {
  value = module.vpc.vpc_id
}

output "itgw_id" {
  value = module.vpc.aws_internet_gateway.id
}