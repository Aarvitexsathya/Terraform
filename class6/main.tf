provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "aarvitex" {
    lifecycle {
      create_before_destroy = true
      prevent_destroy = true
    }
    count = 2
    ami = "ami-00a929b66ed6e0de6"
    instance_type = "t2.micro"
}