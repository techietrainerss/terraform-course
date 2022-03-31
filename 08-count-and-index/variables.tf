variable "vpcID" {
  type = string
}

variable "public_subnet_cidr"{
  type = list
}

variable "private_subnet_cidr"{
  type = list
}

variable "az"{
  type = list
}
