### Count and Index
When you need to create a resource for multiple times you may face duplicate problem. Terraform provides count parameter to avoid this problem. we can provide like
```
count = 2
```
Each time it iterates terraform will make a parameter available called **count.index** to know the iteration number.</br>
Using the count and count.index we can avoid duplicate code.