
# Build Blocks

<p> Repo Dedicado aos codigos de Terraform: </p>

<img src="./img/blocks.jpg" height="200" width="600">

- Website: https://www.terraform.io
- [![Gitter chat](https://badges.gitter.im/hashicorp-terraform/Lobby.png)](https://gitter.im/hashicorp-terraform/Lobby)
- Mailing list: [Google Groups](http://groups.google.com/group/terraform-tool)

![Texto alternativo opcional se a imagem não carregar](https://azure.microsoft.com/images/shared/customers/terraform_l.png?v=a66283855f4ab7430d7ea09b1fbb36a63da2aeece1f2d11cc0b9983207d079b2) 

----------------------------------------------------------------------------------------------------------------
by Angelo Moreira - SP - BRASIL - MAIO 2019 - V1.0
[![](https://jaywcjlove.github.io/sb/ico/linux.svg)](https://jaywcjlove.github.io/linux-command/) 
----------------------------------------------------------------------------------------------------------------
## Passo a passo:
----------------------------------------------------------------------------------------------------------------
1 - [Instalação em Linux](#INSTALAÇÃO_EM_LINUX)

wget https://releases.hashicorp.com/terraform/0.12.3/terraform_0.12.3_linux_amd64.zip \
ou https://www.terraform.io/downloads.html e efetuar o download\
unzip terraform_0.12.3_linux_amd64.zip\
cp ou mv terraform /bin\
terraform

![install](./img/install.gif)


----------------------------------------------------------------------------------------------------------------
2 - [Iniciando o Terraform](#INICIANDO_TERRAFORM)

- mkdir terraform
- cd terraform
- touch provider.tf
- vim provider.tf

colar:

provider "aws" { \
&nbsp;&nbsp;&nbsp;&nbsp;access_key = "${var.AWS_ACCESS_KEY}" \
&nbsp;&nbsp;&nbsp;&nbsp;secret_key = "${var.AWS_SECRET_KEY}" \
&nbsp;&nbsp;&nbsp;&nbsp;region = "${var.AWS_REGION}" \
} 
  
salve o arquivo 

- terraform init 

![init](./img/init.gif)


----------------------------------------------------------------------------------------------------------------
3 - [Projeto](#Projeto)

----------------------------------------------------------------------------------------------------------------
