
# Lab 2-4

locals {
    developer = "Zippy"
    documentation = templatefile("document.txt", {name = local.developer})
}

resource "aws_instance" "myVM" {
    ami = var.ami_type
    instance_type = var.inst_type
    tags = {
        Name = "${local.developer}'s machine"
    }
}
