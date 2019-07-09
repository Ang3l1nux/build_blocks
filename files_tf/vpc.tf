resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "vpc-homolog"
  }
}
resource "aws_subnet" "sub-priv1-homolog" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "sub-priv1-homolog"
  }
}

resource "aws_subnet" "sub-priv2-homolog" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "sub-priv2-homolog"
  }
}

resource "aws_subnet" "sub-db1-homolog" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "sub-db1-homolog"
  }
}

resource "aws_subnet" "sub-db2-homolog" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "sub-db2-homolog"
  }
}


 