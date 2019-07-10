#----- Funcao DB_Servers -----
# Provisionar a instância de banco de dados do Funcao
resource "aws_instance" "DBServer" {
    ami = "ami-0e4882c3641296db4"
    instance_type = "m4.large"
    tags = {
        Name = "DBServer"
        }
}