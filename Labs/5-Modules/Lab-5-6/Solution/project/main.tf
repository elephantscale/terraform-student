
# Example 5-6

module "VM" {
    source = "../modules/EC2"
    ami_type = var.machine_ami
    inst_type = var.machine_type
    VM_name = var.machine_name
    sg_groups = module.SG.secgps
  }

module "SG" {
  source = "../modules/SGroup"
  access_port = 80
  sg_name = "My Security Group"
}

output "SG_id" {
  
  value = module.SG.secgps
}
