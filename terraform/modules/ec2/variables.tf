variable "region" {
  type        = string
  default     = "us-west-1"
}

variable "azs" {
  type        = string
  description = "To create subnets"
}