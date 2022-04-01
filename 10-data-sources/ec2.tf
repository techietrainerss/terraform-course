data "aws_ami" "amazon-linux2"{
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*"]
  }

}

data "aws_availability_zones" "az" {
  state = "available"
}
/* resource "aws_instance" "myec2" {
   ami = "ami-04893cdb768d0f9ee"
   instance_type = "t2.micro"

   tags = {
    Name = "HelloWorld"
  }
} */

output "ami-ID" {
  value = data.aws_ami.amazon-linux2.id
}

output "az" {
  value = data.aws_availability_zones.az.names
}
