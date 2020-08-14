resource "aws_instance" "win" {
  count = var.num_instances
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet
  
  tags = {
    Name = "${var.app_name}-${count.index +1}"
    owner = var.owner_name
    squad = var.squad
  }
}
