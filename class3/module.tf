provider "aws" {
    region = "us-east-1"
  
}

module "ec2_instance" {
    source = "./modules/ec2-instance"
    ami_value = "ami-00a929b66ed6e0de6" #replace this with own ami value
    instance_type_value = "t2.micro"
  
}