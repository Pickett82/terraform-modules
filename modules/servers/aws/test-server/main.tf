# data "terraform_remote_state" "vpc" {
#   backend = "s3"

#   config = {
#     bucket = "jdp-terraform-state"
#     key    = var.vpc_remote_state_key
#     region = "eu-west-2"
#   }
# }

resource "aws_instance" "test-server" {
    
    ami = "ami-06672d07f62285d1d" 
    instance_type = "t2.micro"
}