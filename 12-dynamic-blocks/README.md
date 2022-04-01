### Dynamic blocks
If we have multiple blocks to be created, instead of duplicated code we can use dynamic blocks. For example ingress rule in security groups, NACL rules, etc.

### Syntax
```
dynamic "ingress"{ # this ingress block will be created multiple times
    for_each = some variable like list/map to iterate
    content{
        # content will get values from list/map
    }
}
```