# Lab 4-1

### Overview
 
In this lab you will create a set of VMs using _count_

### Run time
15-20 minutes (est)

### Step One - Creating the VMs

* Set up our standard VM definition
* Us the count parameter to generate three copies from the definition
* Use string interpolation to have each machine be assigned a name incorporating the index from the count parameter (ie like "vm-0", "vm-1", etc)
* Use an output construct to print out all of the names of VMs
* Run terraform apply and confirm the VMs were created
* Run terraform destroy to remove the VMs

### Step Two - Create an arbitrary number of VMs

* Create a variable canned "names" that has the type "list(string)"
* Use the terraform.tfvars file to provide a list of three names
* Modify the code from step one to use the length of the names variable to set the value for count
* Modify the code to have each VM be assigned a name from the list
* Run apply to create the VMs and confirm the VMs were created correctly

### Step Three - The problem with removing a VM

* Remove the middle name from the list of names in the terraform.tfvars file
* Run terraform plan and notice carefully which of the VMs is actually destroyed

### Step Four - Clean up the resources

* Run terraform destroy

### Done



