### List and Maps

#### List
```
variable "az"{
    type = list
    default = ["ap-south-1a", ap-south-1b]
}
```
### How to refer in tf files
availability_zones = var.az

#### Map
```
variable "tags"{
    type = map
    default = {
        name = "some-name"
        environment = "DEV"
        empID = "12345"
    }
}
```
### How to refer in tf files
for example
```
tags = {
    Name = var.tags.name
    Environment = var.tags.environment
    EmployeeID = var.tags.empID
}
```