resource "aws_instance" "myec2" {
   ami = "ami-04893cdb768d0f9ee"
   instance_type = "t2.micro"

   tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "myec2-1" {
   ami = "ami-04893cdb768d0f9ee"
   instance_type = "t2.micro"

   tags = {
    Name = "HelloWorld-1"
  }
}