### Data Sources
As you know AMI-ID is different for different region and it may change frequently. So we can use data sources to fetch the data dynamically from terraform.

We have many uses like fetching AZ information, fetching manually created resource information, etc.

### Syntax
```
data "type-of-data" "your-friendly-name" {

}
```
### How to refer?
```
data.<type-of-data>.<your-friendly-name>.argument
```
For example
```
data.aws_ami.amazon_linux2.id
```