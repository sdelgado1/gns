variable "region" {
  type        = string
  default     = "us-west-1"
}

variable "cidr_vpc" {
  type        = string
  default     = "10.88.0.0/24"
}

variable "azs" {
  type        = string
  description = "To create subnets"
}