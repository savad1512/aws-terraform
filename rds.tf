resource "aws_db_subnet_group" "public" {
  name       = "public-db-subnet-group"
  subnet_ids = aws_subnet.public[*].id

  tags = {
    Name = "public-db-subnet-group"
  }
}

resource "aws_db_instance" "postgres" {
  allocated_storage    = var.rds_allocated_storage
  engine               = "postgres"
  engine_version       = "13"
  instance_class       = var.rds_instance_class
  identifier           = var.rds_instance_name
  username             = var.rds_username
  password             = var.rds_password
  publicly_accessible  = var.rds_public_access
  db_subnet_group_name = aws_db_subnet_group.public.name
  vpc_security_group_ids = [aws_security_group.main.id]
  skip_final_snapshot = true

  tags = {
    Name = var.rds_instance_name
  }
}

