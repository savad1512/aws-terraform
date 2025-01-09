resource "aws_elasticache_cluster" "redis" {
  cluster_id           = var.elasticache_cluster_id
  engine               = "redis"
  node_type            = var.elasticache_node_type
  num_cache_nodes      = 1
  subnet_group_name    = aws_elasticache_subnet_group.redis_subnet_group.name
  security_group_ids   = [aws_security_group.main.id]

  tags = {
    Name = var.elasticache_cluster_id
  }
}

resource "aws_elasticache_subnet_group" "redis_subnet_group" {
  name       = "redis-subnet-group"
  subnet_ids = aws_subnet.public[*].id

  tags = {
    Name = "redis-subnet-group"
  }
}
