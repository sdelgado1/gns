output "vpc_id" {
  value = module.vpc.id
}

output "itgw_id" {
  value = module.vpc.aws_internet_gateway.id
}