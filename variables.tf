
# variables.tf
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "region" {
  default = "us-east-1"
}

variable "vpc_name" {
  default = "main-vpc"
}

variable "internet_gateway_name" {
  default = "main-igw"
}

variable "public_route_table_name" {
  default = "public-rt"
}

variable "private_route_table_name" {
  default = "private-rt"
}

variable "nat_gateway_name" {
  default = "main-nat"
}

variable "nat_eip_name" {
  default = "main-nat-eip"
}

variable "security_group_name" {
  default = "main-sg"
}

variable "public_subnet_names" {
  default = ["public-subnet-1", "public-subnet-2"]
}

variable "private_subnet_names" {
  default = ["private-subnet-1", "private-subnet-2"]
}

variable "ec2_instance_name" {
  default = "ubuntu-instance"
}

variable "ec2_key_pair_name" {
  default = "my-key-pair"
}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "ec2_ami_id" {
  default = "ami-0e2c8caa4b6378d8c" # Replace with a valid Ubuntu AMI ID for your region
}

variable "rds_instance_name" {
  default = "postgres-db"
}

variable "rds_instance_class" {
  default = "db.t3.micro"
}

variable "rds_username" {
  default = "dbadmin"
}

variable "rds_password" {
  default = "savad12345" # Replace with a strong password
}

variable "rds_allocated_storage" {
  default = 20
}

variable "rds_public_access" {
  default = true
}

variable "elasticache_cluster_id" {
  default = "basic-redis"
}

variable "elasticache_node_type" {
  default = "cache.t3.micro"
}

variable "elasticache_engine_version" {
  default = "6.x"
}
