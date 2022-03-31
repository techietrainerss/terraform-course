locals {
  vpc_tags = {
      Name = "TechieTrainers-VPC"
      test = "test"
  }

  elb_tags = {

  }

  vpc_all_tags = merge(var.common_tags, local.vpc_tags)
  elb_all_tags = merge(var.common_tags, local.elb_tags)
}