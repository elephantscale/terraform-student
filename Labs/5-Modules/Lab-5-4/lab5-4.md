# Lab 5-4

### Overview
 
This is the fourth in a series of lab to implement a module

### Run time
15-20 minutes (est)

### Step One - Adding more parameters to the list

* In the project folder, add more values to the list variables you defined like this

```hcl

machine_names = ["alpha","beta"]
machine_types = ["t2.small","t2.nano"]
machine_amis = ["ami-077e31c4939f6a2f3","ami-00399ec92321828f5"]
```

### Step Two - Create multiple EC2s

* In the project module, use the count construct to create two machines, or you can use for_each

```hcl
module "VM" {
  count = length(var.machine_names)
  source = "../modules/EC2"
  ami_type = var.machine_amis[count.index]
  inst_type = var.machine_types[count.index]
  VM_name = var.machine_names[count.index]
}
```

### Step Three - Execute

* Run terraform apply and confirm that the VMs were created correctly
* Run terraform destroy to clean up

### Done



