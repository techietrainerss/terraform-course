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