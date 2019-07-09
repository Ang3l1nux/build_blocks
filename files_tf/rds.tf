resource "aws_db_parameter_group" "default"{
  name = "sqlserver12"
  family = "sqlserver-se-12.0"
  description = "Parameter group for sqlserver-se-12"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 40
  storage_type         = "gp2"
  engine               = "sqlserver-se"
  engine_version       = "12.00.5000.0.v1"
  instance_class       = "db.m5.large"
  username             = "user"
  password             = "password"
  timezone             = "E. South America Standard Time"
  parameter_group_name = "sqlserver12"
  license_model        = "license-included" 
  db_subnet_group_name   = "${aws_db_subnet_group.rds_homolog.id}"
  vpc_security_group_ids = ["${aws_security_group.rds_homolog_sql.id}"]
  identifier           = "sql-homolog"
  multi_az             = true 
  backup_retention_period = "1"
  skip_final_snapshot = true
}

resource "aws_db_subnet_group" "rds_homolog" {
  name       = "rds_homolog"
  subnet_ids = ["${aws_subnet.sub-db1-homolog.id}", "${aws_subnet.sub-db2-homolog.id}"]
}

resource "aws_security_group" "rds_homolog_sql" {
  name = "rds_homolog_sql"
  description = "RDS Homolog SQL Security Group"
  vpc_id = "${aws_vpc.main.id}"
}

