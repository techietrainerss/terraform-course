variable "cidr"{
    default = "10.0.0.0/16"
    type = string
}

variable "name"{
    default = "Techietrainers"
    type = string
}

variable "environment"{
    default = "DEV"
    type = string
}

variable "empID" {
    default = "123446"
    type = number
}

variable "dns" {
    default = true
    type = bool
}

variable "hostnames" {
    default = true
    type = bool
}