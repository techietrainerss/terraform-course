## This is the first practical of terraform

### EC2 creation
- You should have AWS account
- Install visual studio code, git bash
- Create IAM programatic user
- Write provider (in this case AWS)
- Provide credentials to terraform (terraform need to authenticate before creating the resources)
- Write ec2 terraform file

terraform version different, provider version is different.

### Commands
- Run the below to intialize the directory
```
terraform init
```
- Run hte below command to check the resources
```
terraform plan
```
- Run the below command to apply
```
terraform apply
```
- Run the below command to destroy resources
```
terraform destroy
```
**NOTE:** AMI is different for every region, make sure you get the AMI same as the region you gave in provider.tf

### Syntax
Common HCL syntax is as below.
```
resource "type-of-resource-from-provider" "your-friendly-name" {
    attribute-1 = ""
    attribute-2 = ""
}
```
### How terraform works?

![alt text](how-terraform-works.PNG)
