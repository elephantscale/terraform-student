# Lab 5-2

### Overview
 
This is the second in a series of labs to implement a module

### Run time
15-20 minutes (est)

### Step One - Parameterize the Module

* In the EC2 module, create three variables to supply values for the ami, instance_type and Name tag for the VM
* Replace the hard coded values in the VM definition with variable references
* In the project module, create a second instance of the VM module call

## Step Two - Pass the Parameters

* Set up the variables in the project module call to the module to pass hard coded values to the two modules when they are called

```hcl

module "VM-1" {
    source = "../modules/EC2"
    ami_type = "ami-00399ec92321828f5"
    inst_type = "t2.micro"
    VM_name = "alpha"
  }

module "VM-2" {
    source = "../modules/EC2"
    ami_type = "ami-00399ec92321828f5"
    inst_type = "t2.small"
    VM_name = "beta"
  }
  ```
### Step Two - Execute
* Run terraform init to ensure all the module calls are resolved 
* Run terraform apply and confirm that the VMs were created correctly
* Run terraform destroy to clean up

### Done



