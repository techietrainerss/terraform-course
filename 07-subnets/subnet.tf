locals {
  public-subnet-01-tags = {
      Name = "public-subnet-01"
  }
  public-subnet-02-tags = {
      Name = "public-subnet-02"
  }
}
resource "aws_subnet" "public-subnet-01" {
    vpc_id = var.vpcID
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-south-1a"
    tags = local.public-subnet-01-tags
}

resource "aws_subnet" "public-subnet-02" {
    vpc_id = var.vpcID
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-south-1b"
    tags = local.public-subnet-02-tags
}