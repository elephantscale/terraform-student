# Lab 5-1


### Overview
 
This is the second in a series of lab to build a module

### Run time
15-20 minutes (est)

### Step One - Creating the module structure

* Create two folders, one called "project" and one called "modules"
* In the "modules" folder, create a sub-folder called "EC2"

### Step Two - Set up the EC2 module 

* Use the standard definition for an EC2 instance in the EC2 module folder using hardcoded values and the usual file layout

### Step Three - Set up the root module

* In the project folder, call the EC2 module with the code

```hcl

module "VM-1" {
    source = "../modules/EC2"
  }
```

### Step Four - Execute

* In the project module, run terraform init. Notice that the module reference is resolved by terraform
* Run terraform apply and confirm that the VM was created correctly
* Run terraform destroy to clean up

### Done



