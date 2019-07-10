#----- DB_Servers -----
# Provisionar a instância de banco de dados
resource "aws_key_pair" "aws" {
 key_name = "aws"
 public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
}
resource "aws_instance" "DBServer" {
   ami = "ami-0e4882c3641296db4"
   instance_type = "t3.xlarge"
   key_name = "${aws_key_pair.aws.key_name}"
   tags = {
       Name = "DBServer"
       }
   user_data = <<EOF
<powershell>
tzutil /s "E. South America Standard Time"
</powershell>
EOF
}