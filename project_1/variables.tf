# Variables
variable "access_key" {
    description = "Access key to the AWS console"
}

variable "secret_key" {
    description = "Secret key to the AWS console"
}

variable "region" {
    description = "Location of your infrastructure"
}

variable "ami" {
    description = "AMI for your EC2 instance"
  
}

variable "instance_type" {
    description = "Instance type for your EC2  instance"
  
}