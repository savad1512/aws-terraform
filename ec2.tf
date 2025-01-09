resource "aws_instance" "ubuntu-instance" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  subnet_id     = aws_subnet.public[0].id
  vpc_security_group_ids = [aws_security_group.main.id]  # Use `vpc_security_group_ids` instead of `security_groups`
  key_name = aws_key_pair.my-key-pair.key_name

  tags = {
    Name = var.ec2_instance_name
  }
}

