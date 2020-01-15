
/* Nome do app */
variable "app_name" {
  default = "app"
}

/* Definição do ambiente (dev, staging, prod etc...) */
variable "env" {
  default = "teste"
}

/*Região a ser utilizada para provisionamento da VPC*/
variable "region" {
  default = "us-east-2"
}

/*Zonas de disponibilidade que serão utilizadas para o provisionamento da VPC, será criada 2 subnet por zona de disponibilidade.*/
variable "azs" {
  default = {
    "us-east-2" = "us-east-2a,us-east-2c"
  }
}

/*Range que será utilizado pela VPC, cada subnet a ser criada, por padrão será máscara /24*/
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
