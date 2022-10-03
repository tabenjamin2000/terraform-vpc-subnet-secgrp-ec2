# Create ec2

resource "aws_instance" "web1" {
    ami = var.image_id
    instance_type = "t2.micro"
# VPC
    subnet_id = aws_subnet.prod-subnet-public-1.id 
# Security Group
    vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"] 
    key_name = "devopskey"
    tags = {
    Name = "Prod_Server"
  }
}


