provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "aarvitex" {
    ami = "ami-00a929b66ed6e0de6"
    instance_type = "t3.micro"
}

resource "aws_s3_bucket" "statebackend16042025" {
    bucket = "statebackend16042025"
    tags = {
      Name = "aarvibucket"
      Environment = "dev"
    }
  
}