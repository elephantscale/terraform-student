# Lab 4-3

### Overview
 
In this lab you will create security group with a set of custom ingress rules using *for_each*

### Run time
15-20 minutes (est)

### Step One - Creating the list of rules

* Create the list of rules using a local variable
* Each of the items on the list is an object
    
```hcl
locals {  
  rules = [{
    description = "HTTP Port",
    port = 80,
    cidr_blocks = ["0.0.0.0/0"],
  },{
    description = "Custom Port",
    port = 81,
    cidr_blocks = ["10.0.0.0/16"],
  }]
}
```
### Step Two - Set up the dynamic block 

* Use the dynamic block to generate the ingress rules dynamically for the security group

```hcl
  dynamic "ingress" {
    for_each = local.rules
    content {
      description = ingress.value.description
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
```

### Step Three - Create the Security Group

* Run terraform apply and confirm in the console that the security group has been created with the correct ingress rules
* Run terraform destroy to clean up

### Done



