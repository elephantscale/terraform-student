# Lab 5-5

### Overview
 
This is the fifth in a series of lab to build a module

### Run time
15-20 minutes (est)

### Step One - Adding a Security Group Module

* In the modules folder, create a new folder called "SGroup"
* Add the security group definition in the folder in the main.tf file

```hcl

resource "aws_security_group" "app_port" {
  description = " Security group to allow access app instance"
  ingress {
    description = "OpenPort"
    from_port   = var.access_port
    to_port     = var.access_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}
```
* The values are provided with the access port and name variables

```hcl
variable "access_port" {
    description = "Access port to use for the application"
    type = number
    default = 80
}

variable "sg_name" {
    description = "The name of the security group"
    type = string
    default = "My SG"
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

### Step Three - Add the module 

* In the project folder, add a reference to the security group modules

```hcl
module "SG" {
  source = "../modules/SGroup"
}
```
### Step Three - Execute

* Run terraform init to link in the new module
* Run terraform apply and confirm that the security was created correctly
* Run terraform destroy to clean up

### Done



