# terraform
Repo dedicado a codigos terraform by Angelo Moreira

----------------------------------------------------------------------------------------------------------------                                                                                     

![Texto alternativo opcional se a imagem não carregar](https://azure.microsoft.com/images/shared/customers/terraform_l.png?v=a66283855f4ab7430d7ea09b1fbb36a63da2aeece1f2d11cc0b9983207d079b2) 

----------------------------------------------------------------------------------------------------------------
by Angelo Moreira - SP - BRASIL - MAY 2019 - V1.0

----------------------------------------------------------------------------------------------------------------
## Documentation:
----------------------------------------------------------------------------------------------------------------

1 ------ [Installation](#INSTALLATION) \
2 ------ [Project](#PROJECT) \
3 ------ [Resource](#RESOURCE) \
4 ------ [Concept About Key](#CONCEPT_ABOUT_KEY) \
5 ------ [Terraform Course](#TERRAFORM_COURSE) \
6 ------ [Provisioner_AWS](#PROVISIONER_AWS) \
7 ------ [Install_AWS_CLI](#INSTALL_AWS_CLI) \
8 ------ [Useful Commands Terraform](#USEFUL_COMMANDS_TERRAFORM) \
9 ------ [Initialize Terraform](#INITIALIZE_TERRAFORM) \
10 ----- [All In File Unique](#ALL_IN_FILE_UNIQUE) \
11 ----- [Variables](#VARIABLES) \
12 ----- [Provisionar Software](#PROVISIONAR_SOFTWARE)

----------------------------------------------------------------------------------------------------------------
### INSTALLATION:
----------------------------------------------------------------------------------------------------------------

````
* Baixar o arquivo de acordo com seu S.O em https://www.terraform.io/
* Linux, após o download copiar para /bin 
* abrir o terminal e digitar terraform 
````

----------------------------------------------------------------------------------------------------------------
### PROJECT:
----------------------------------------------------------------------------------------------------------------

````
> GIT/GITHUB >>>>> TERRAFORM >>>>> ANSIBLE >>>>> AWS 

GIT ------------ para centrazilar o código localmente na maquina + historico 
GITHUB --------- para armazenar o código em um repositório remoto + historico 
TERRAFORM ------ para provisionar a infraestrutura
ANSIBLE -------- para provisionar aplicações, updates a nível de software
AWS ------------ Cloud para prover a infraestrutura
````

----------------------------------------------------------------------------------------------------------------
### RESOURCE:
----------------------------------------------------------------------------------------------------------------

````
[   ] VPC 
[   ] INTERNET GATEWAY 
[   ] SUBNET 
[   ] ROUTE TABLE 
[   ] SECURITY GROUP 
[   ] INSTANCE 
[   ] KEY PAIR 
[   ] ROUTE 53
````

----------------------------------------------------------------------------------------------------------------
### CONCEPT_ABOUT_KEY:
----------------------------------------------------------------------------------------------------------------

````
Fazendo uma analogia, a chave privada pode ser considerada uma chave que abre um cadeado e a chave publica
o cadeado;

ssh-keygen -f ~/.ssh/ansible
ssh-copy-id -i ~/.ssh/ansible user@[ip] -p [porta]
ssh -p porta [user]@[ip]
````

----------------------------------------------------------------------------------------------------------------
### TERRAFORM_COURSE:
----------------------------------------------------------------------------------------------------------------
What is Terraform? - Permite que você escreva infraestrutura como código iaas - Infrastructure as code

Github repository
https://github.com/wardviaene/terraform-course

----------------------------------------------------------------------------------------------------------------
### PROVISIONER_AWS:
----------------------------------------------------------------------------------------------------------------
````
- CREATE ACCOUNT AWS ------------------- OK
- CREATE USER IAM ADMIN ---------------- OK
- UP T2.MICRO WITH TERRAFORM ----------- OK 
- RUN TERRAFORM APPLY ------------------ OK

REGION: N.VIRGINIA = us-east-1a 
````
----------------------------------------------------------------------------------------------------------------
### INSTALL_AWS_CLI:
----------------------------------------------------------------------------------------------------------------
````
apt-get install python-pip
sudo pip3 install --upgrade awscli
aws --version 
````
----------------------------------------------------------------------------------------------------------------
### USEFUL_COMMANDS_TERRAFORM:
----------------------------------------------------------------------------------------------------------------
````
$ terraform plan  -------------------------- plan
$ terraform apply -------------------------- shortcut for plan & apply - avoid this in production
$ terraform plan -out out.terraform -------- terraform plan and write the plan to out file
$ terraform apply out.terraform ------------ apply terraform plan using out file
$ terraform show --------------------------- show current state
$ cat terraform.tfstate -------------------- show state in JSON format
````
----------------------------------------------------------------------------------------------------------------
### INITIALIZE_TERRAFORM:
----------------------------------------------------------------------------------------------------------------
````
 - CREATE DIR 
 - CREATE INSTANCE.TF 
 - TERRAFORM INIT 
 - TERRAFORM PLAN  
 - TERRAFORM APPLY 
 - TERRAFORM DESTROY
 
 - TERRAFORM PLAN -OUT OUT.TERRAFORM 
 - TERRAFORM APPLY -OUT.TERRAFORM 
 - TERRAFORM PLAN -OUT FILE; TERRAFORM APPLY FILE; RM FILE 
 ````
----------------------------------------------------------------------------------------------------------------
### ALL_IN_FILE_UNIQUE:
----------------------------------------------------------------------------------------------------------------
````
provider "aws" {
  access_key = "XXXXXXXXXXXXXXXXXXXXXX"
  secret_key = "YYYYYYYYYYYYYYYYYYYYYY"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"
}
````
----------------------------------------------------------------------------------------------------------------
### VARIABLES:
----------------------------------------------------------------------------------------------------------------
````
USADA PARA SEPARAR OS ARQUIVOS 
Exemplo provider.tf 

VARIABLE= "$" "{var."
ex: access_key = "${vars.AWS_ACCESS_KEY}"
.
.
.
provider.tf
vars.tf 
terraform.tfvars >>>>> adicionar ao .gitignore 
instance.tf 
````
----------------------------------------------------------------------------------------------------------------
### PROVISIONAR_SOFTWARE: 
----------------------------------------------------------------------------------------------------------------
````
2 maneiras

1 ------------------------ criar uma AMI personalizada >>>>> packer 
|
|
2 ------------------------ iniciar AMIs padronizadas >>>>> upload de arquivo e/ou >>>>> remote exec 
***** Pode executar arquivos e scripts remotamente ou usar ferramentas de automação como CHEF, PUPPET ou ANSIBLE 



1 - upload
em instance.tf 

provisioner "file"{
  source="app.conf" [source="script.sh"]
  destination="/etc/myapp.conf" [destination="/opt/script.sh"] 
}

CONEXÃO: (AWS utiliza KEY)

connection {
  user = "${var.instance_username}"
  password = "${var.instance_password}"
}


2 - utilizar software de automação
para ANSIBLE:
- execute o terraform
- gerar endereços ips 
- ver a saída e executar o "ansible-playbook" nesses hosts 
````
