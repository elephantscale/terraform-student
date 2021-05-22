
output "EC2_ami" {
    description = "ami type used in myVM"
    value = aws_instance.myVM.ami
}

output "EC2_type" {
    description = "instance type used in myVM"
    value = aws_instance.myVM.instance_type
}

output "EC2_pubic_ip" {
    description = "myVM public ip address"
    value = aws_instance.myVM.public_ip
}