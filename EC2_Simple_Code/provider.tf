provider "aws" {
  region                  = "us-east-1"
  profile                 = "default"
  shared_credentials_file = "~/.aws/credentials"
}

terraform {
  backend "s3" {
    bucket  = "nerdsociety-state-env"
    key     = "nerdsociety/lab2/terraform.tfstate"
    encrypt = "true"
    region  = "us-east-1"
    profile = "default"
  }
}

