
# Lab 2-1

resource "aws_instance" "myVM" {
    ami = "ami-077e31c4939f6a2f3"
    instance_type = "t2.nano"
    tags = {
        Name = "Lab 2-1"
    }
}

resource "aws_s3_bucket" "myBucket" {
    bucket = << Insert your unique name here >>
}

