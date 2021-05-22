

output "EC2_Name" {
    description = "Name Assigned from file"
    value = "Hi, my name is ${aws_instance.myVM.tags.Name}"
}