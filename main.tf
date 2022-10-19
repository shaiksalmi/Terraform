provider "aws" {
    region="ca-central-1"
    profile=var.profile
}

resource "aws_instance" "rmq" {
    ami = "ami-08c40ec9ead489470"
    instance_type = "t2.micro"
    key_name = "rabbitmq"
    vpc_security_group_ids = [ "sg-05d99cd0a374be394" ]

    tags = {
        Name = var.Name
        group = var.grou
    }
}
