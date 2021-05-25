# Lab 5-3

### Overview
 
This is the third in a series of lab to build a module

### Run time
15-20 minutes (est)

### Step One - Creating the main module variables

* In the project folder, create three variables to supply lists of machine names, amis and instance_types. Supply default value for each list using the hardcoded values you used in EC2 module. Each list variable has a length of 1

```hcl

variable machine_amis {
    type = list(string)
    default = ["ami-077e31c4939f6a2f3"]
}
```

### Step Two - Pass the variables through to the EC2 module

* In the project module, pass the variable values to the EC2 module

```hcl
module "VM-1" {
    source = "../modules/EC2"
    ami_type = var.machine_amis[0]
    inst_type = var.machine_types[0]
    VM_name = var.machine_names[0]
  }
```

### Step Three - Execute

* Run terraform apply and confirm that the VM was created correctly
* Run terraform destroy to clean up

### Done



