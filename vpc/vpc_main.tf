
/*Cria VPC com o CIDR definido no arquivo vars.tf*/
resource "aws_vpc" "main" {
  cidr_block           = "${var.vpc_cidr}"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name    = "${var.app_name}-${var.env}"
    Env     = "${var.env}"
    app = "${var.app_name}"
  }
}
