// If I select DEV I need to create t2.micro, SIT t2.small, PROD t2.medium
//to login to EC2 through SSH, we must have SSH key and security group attached
// ec2 keypair, security group and attach them to EC2

data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}

resource "aws_instance" "myec2" {
   ami = "ami-04893cdb768d0f9ee"
   instance_type = lookup(var.instance_type, var.environment, "t2.nano")
   key_name = aws_key_pair.myKey.key_name
   security_groups = [ aws_security_group.allow_ssh.name ]
   tags = {
    Name = "HelloWorld"
  }
}

resource "aws_key_pair" "myKey" {
  key_name   = "deployer-key"
  public_key = file("C:\\Users\\GoddumarriRajasekhar\\.ssh\\id_rsa.pub")
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = "vpc-0720a5c2fc7a18218"

  ingress {
    description      = "SSH from my system"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      =  ["${chomp(data.http.myip.body)}/32"]
  }
}

output "public_ip" {
  value = aws_instance.myec2.public_ip
}