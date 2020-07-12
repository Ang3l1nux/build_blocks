
/*Cria um internet gateway*/
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"

  tags = {
    Name    = "${var.app_name}-${var.env}"
    Env     = "${var.env}"
    app = "${var.app_name}"
  }
}
