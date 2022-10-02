terraform {
  required_version = ">= 1.0.0, < 2.0.0"

#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0"
#     }
#   }
}



module "test_server" {
  source = "../../../../modules/servers/aws/test-server"

  server_name = "test server"
  environment = "test"
}