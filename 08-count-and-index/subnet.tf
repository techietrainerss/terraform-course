locals {
  //list of Maps
  public-subnet-tags = [
      {
          Name = "public-subnet-01"
      },
      {
          Name = "public-subnet-02"
      }
  ]

  private-subnet-tags = [
      {
          Name = "private-subnet-01"
      },
      {
          Name = "private-subnet-02"
      }
  ]
}
resource "aws_subnet" "public-subnet" {
    count = 2
    vpc_id = var.vpcID
    cidr_block = var.public_subnet_cidr[count.index]
    availability_zone = var.az[count.index]
    map_public_ip_on_launch = true
    tags = local.public-subnet-tags[count.index] //you can also variables for this like az
}

resource "aws_subnet" "private-subnet" {
    count = 2
    vpc_id = var.vpcID
    cidr_block = var.private_subnet_cidr[count.index]
    availability_zone = var.az[count.index]
    tags = local.private-subnet-tags[count.index] //you can also variables for this like az
}

//count.index