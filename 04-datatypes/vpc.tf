resource "aws_vpc" "main" {
  cidr_block = var.cidr
  enable_dns_support = var.dns
  enable_dns_hostnames = var.hostnames

  tags = {
      Name = var.name
      Environment = var.environment
      EmployeeID = var.empID
  }
}