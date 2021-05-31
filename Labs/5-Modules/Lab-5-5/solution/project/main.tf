
# Example 5-5

module "VM" {
    count = length(var.machine_names)
    source = "../modules/EC2"
    ami_type = var.machine_amis[count.index]
    inst_type = var.machine_types[count.index]
    VM_name = var.machine_names[count.index]
  }

module "SG" {
  source = "../modules/SGroup"
  access_port = 80
  sg_name ="My Security Group"
}

