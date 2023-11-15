# Provider
provider "aws" {
    region = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}

# Create security group for EC2 instance
resource "aws_security_group" "sg-ec2" {
    name = "Security-group"
    description = "Security Group to allow traffic to EC2 instance"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }  
}

# Launch EC2 instance
resource "aws_instance" "ec2" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = [ "${aws_security_group.sg-ec2.name}" ]
    tags = {
      "Name" ="EC2-instance" 
    }

  
}