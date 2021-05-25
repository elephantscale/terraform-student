
# Lab 2-5



resource "aws_instance" "Ohio" {
    ami = data.aws_ami.ubuntu-east-2.id
    instance_type = "t2.nano"
    tags = {
        Name = "us-east-2"
    }
}

resource "aws_instance" "Virginia" {
    ami = data.aws_ami.ubuntu-east-1.id
    provider = aws.Virginia
    instance_type = "t2.nano"
    tags = {
        Name = "us-east-1"
    }
}

