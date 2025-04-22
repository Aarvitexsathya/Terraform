provider "aws" {
    region = "us-east-1"
  
}

variable "ami" {
    description = "example"
  
}

variable "instance_type" {
    description = "example2"
  
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami = var.ami
    instance_type = var.instance_type
}