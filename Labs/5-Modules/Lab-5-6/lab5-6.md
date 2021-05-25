# Lab 5-6

### Overview
 
This is the sixth in a series of lab to build a module

### Run time
15-20 minutes (est)

### Step One - Adding a Security Group return value

* In the SGroup folder, create an output value to return the id of the security group

```hcl

output "secgps" {
  value =aws_security_group.app_port.id
  description = "Returns the id of the security group"
}
```

### Step Two - Create an input variable in the EC2 module

* In the EC2 module, create a variable to input the id of the security group

```hcl
variable "sg_groups" {
  description = "Associated security groups"
  type = string
}
```
* Add the code in the VM definition to use this variable

```hcl
resource "aws_instance" "alpha" {
    ami = var.ami_type
    instance_type = var.inst_type
    tags = {
        source = "EC2 Module"
        Name = var.VM_name
    }
    vpc_security_group_ids = [var.sg_groups]
}  
```

### Step Three - Connect the modules

* In the project folder, pass the return value of the SGroup module into the EC2 modules

```hcl
module "VM" {
  source = "../modules/EC2"
  ami_type = var.machine_ami
  inst_type = var.machine_type
  VM_name = var.machine_name
  sg_groups = module.SG.secgps
}
```

* Add input values for the SGroup module

```hcl
module "SG" {
  source = "../modules/SGroup"
  access_port = 8080
  sg_name = "My Demo"
}

```
### Step Four - Execute

* Run terraform apply and confirm that the security was created correctly and linked correctly to the VM
* Run terraform destroy to clean up

### Done



