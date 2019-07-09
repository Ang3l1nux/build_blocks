variable "INSTANCES" {
    type = "list"
    default = ["web-server", "web-services", "servcon"]
}

variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-east-1"
}
variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-0e38a7fb8cd1e16fe"
  }
}

