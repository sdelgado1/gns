terraform {
  backend "s3" {
    bucket         = "gns-cloud-technical-test-terraform-state-backend"
    key            = "infra-test-cloud.tfstate"
    region         = "us-west-1"
    dynamodb_table = "gns-cloud-technical-test-terraform-state-backend"
    encrypt        =  true
  }
}