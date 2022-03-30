### Variables
Meaning of variable is subjected to change. We use variables when
- If you have a value that may change in future, replace that value with variable
- If you have a value used in multiple places replace it the variable

In terraform variables are seperated from main source tf files through variable.tf file.

### Syntax
```
variable "name-of-your-variable"{

}
```
You can assign default values to your variable through default keyword like below.
```
variable "name-of-your-variable"{
    default = "10.0.0.0/16"
}
```
### How to supply variable values to terraform?

- Prompt </br>
    &ensp;Declare the variable in variables.tf file. Then terraform will prompt for the values while running plan/apply. &ensp;
- Default variables </br>
    &ensp;Declare the variable in variables.tf file. Use dafault keyword to supply default values.&ensp;
- File </br>
    &ensp;Declare the variable in variables.tf file. You can create terraform.tfvars file to override the default values in variables.tf&ensp;
- Environment variables </br>
    &ensp;Declare the variable in variables.tf file. Create an environment variable with TF_VAR_CIDR, then terraform can read the values. </br>
    &ensp;For Windows SET TF_VAR_[variable-name], for example SET TF_VAR_cidr=10.0.0.0/16 </br>
    &ensp;For Linux example export TF_VAR_cidr="10.0.0.0/18"&ensp;
- Command line </br>
    &ensp;Declare the variable in variables.tf file. While running the command give like this terraform plan -var="cidr=10.0.0.0/16"

### Preference
1. Command Line
2. terraform.tfvars
3. Default'
4. Environment variables
If terraform is not able to find the values through above ways then it will prompt
