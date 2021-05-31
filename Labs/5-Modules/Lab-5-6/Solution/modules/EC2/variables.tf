
variable "ami_type" {
    type = string
}

variable "inst_type" {
    type = string
}

variable VM_name {
    type = string
    default = "I have no name"
}

variable "sg_groups" {
    description = "Associated security groups"
    type = string
}