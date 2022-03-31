### outputs

If we compare terraform with any scripting/programming language outputs can be referred as return values. When we create some resource through terraform if we want to know the created resource ID, name, etc created we should use output.

```
output "name-of-output"{
    value = <resourceType>.<nameOfResource>.<Attribute>
}
```

### Locals
locals can be compared as temproray variables of the function. As the name indicates locals in terraform are only valid to the .tf only. Usually we define locals at the top of the file.

#### Uses
- If multiple resources use same tags, we can declare in locals and resue.
- Locals can be used for expressions as well(we will see this clearly in another session)

**NOTE:** We should not over utilise locals, it should be used to avoid repeating the same values or expressions multiple times in a configuration.