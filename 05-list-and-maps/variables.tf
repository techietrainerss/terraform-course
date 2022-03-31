variable "az" {
  type = list
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "tags" {
  type = map
  default = {
      name = "techietrainers-elb"
      empID = "123456"
  }
}

variable "port"{
    type = number
    default = "8080"
}

variable "czlb"{
    type = bool
    default = true
}