variable "INSTANCES" {
   type = "list"
   default = ["web-server", "web-services", "web-application"]
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
variable "PATH_TO_PRIVATE_KEY" {
 default = "chave-chave"
}
variable "PATH_TO_PUBLIC_KEY" {
 default = "chave-chave"
}
