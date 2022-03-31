
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "TechieTrainers-VPC"
    Project = "TechieTrainers"
    Environment = "DEV"
  }
}

output "vpcID" {
  value = aws_vpc.main.id
}
