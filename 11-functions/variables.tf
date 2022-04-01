variable "instance_type"{
    type = map
    default = {
        DEV = "t2.micro"
        SIT = "t2.small"
        PRD = "t2.medium"
    }
}

variable "environment" {
    type = string
    default = "UAT"
}