resource "aws_instance" "instances" {
   ami = "${lookup(var.AMIS, var.AWS_REGION)}"
   instance_type = "t2.micro"
   count = "${length(var.INSTANCES)}"
   subnet_id = "${aws_subnet.sub-priv1-homolog.id}"
   tags = {
       Name = "${element(var.INSTANCES, count.index)}"
       }
   }
