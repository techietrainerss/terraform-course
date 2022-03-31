### outputs

If we compare terraform with any scripting/programming language outputs can be referred as return values. When we create some resource through terraform if we want to know the created resource ID, name, etc created we should use output.

```
output "name-of-output"{
    value = <resourceType>.<nameOfResource>.<Attribute>
}
```

### Locals
locals can be compared as temproray variables of the function. Usually we define locals at the top of the file.

Create locals at the top and use it wherever you want in the terraform folder

#### Uses
- If a value is used single/multiple times, declare it in local and refer it.
- You can create repetitive expresssion in local and refer it anywhere in the file.
- You can combine variables with locals for best results

**NOTE:** We should not over utilise locals, it should be used to avoid repeating the same values or expressions multiple times in a configuration.