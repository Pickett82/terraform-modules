# data "terraform_remote_state" "vpc" {
#   backend = "s3"

#   config = {
#     bucket = "jdp-terraform-state"
#     key    = var.vpc_remote_state_key
#     region = "eu-west-2"
#   }
# }

resource "aws_instance" "test_server" {
    
    ami           = "ami-06672d07f62285d1d" 
    instance_type = "t2.micro"
    key_name      = aws_key_pair._.key_name
}

resource "tls_private_key" "_" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "_" {
  public_key = tls_private_key._.public_key_openssh
  tags = {
    "Application" = "Cambs-Insight"
  }
}