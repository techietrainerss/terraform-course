# Create a new load balancer
resource "aws_elb" "myElb" {
  name               = var.tags.name
  availability_zones = var.az

  listener {
    instance_port     = var.port
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  cross_zone_load_balancing   = var.czlb
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = var.tags.name
    EMPIF = var.tags.empID
  }
}