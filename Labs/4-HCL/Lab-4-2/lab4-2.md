# Lab 4-2

### Overview
 
In this lab you will create a set of VMs using *for_each*

### Run time
15-20 minutes (est)

### Step One - Creating the VMs

* Use the same list of VM names you used in the previous lab
* Instead of _count_ use *for_each=toset(var.names)*
* Ensure each machine has the Name tag corresponding to a name in the names list
* Run apply to confirm that the machine are created correctly

### Step Two - The problem with removing a VM

* Remove the middle name from the list of names in the terraform.tfvars file
* Run terraform plan and notice carefully which of the VMs is actually destroyed

### Step Three - Clean up the resources

* Run terraform destroy

### Done



