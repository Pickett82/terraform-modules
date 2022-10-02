output "ec2_dns_name" {
  value = module.test_server.ec2_dns_name
}

output "ec2_ip" {
  value = module.test_server.ec2_ip
}

output "private_key" {
  value     = module.test_server.private_key
  sensitive = true
}

