resource "aws_key_pair" "my-key-pair" {
  key_name   = var.ec2_key_pair_name
  public_key = tls_private_key.rsa.public_key_openssh # Ensure this path points to your SSH public key
}

resource "tls_private_key" "rsa" {
  algorithm ="RSA"
  rsa_bits = 4096
}

resource "local_file" "my-key-pair" {
  content =  tls_private_key.rsa.private_key_pem
  filename = "my-key-pair.pem"
}