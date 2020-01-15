
 terraform {
  backend "s3" {
    bucket  = "status-terraform"
    encrypt = "true"
    key     = "vpc/terraform.tfstate"
    region  = "us-east-2"
  }
}
