
# Lab 1-1

resource "aws_instance" "HelloWorld" {
    ami = "ami-077e31c4939f6a2f3"
    instance_type = "t2.nano"
    tags = {
        Name = "Hello World"
    }
}
