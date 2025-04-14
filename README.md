# TerraformThis is a class one folder. Explained about lab setup and basic code with alias details.
Class-1:
---------
Terraform:
==========
Download terraform from hashicop
open environment variables and give the path of that
now give terraform --version

Add extension in VSC
VSC Run as admin

code:
=======
provider "aws" {
  region = "us-east-1"
  alias  = "North-Virginia"
}
provider "aws" {
  region = "us-east-2"
  alias  = "ohio"
}

resource "aws_instance" "Tf-class1" {
  ami           = "ami-0100e595e1cc1ff7f"
  instance_type = "t2.micro"
  provider = aws.ohio
  tags = {
    Name     = "Tf-class1"
    TeamName = "Devops"
  }

}

terraform lifecycle:
====================
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy

AWS CLI
========
Install AWS CLI
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

Create IAM user with Access key and secret key
Type aws configure(give access key and secret access key)

=======================================================================================================

Multi region & alias:
----------------------
# Multiple Region Implementation in Terraform

You can make use of `alias` keyword to implement multi region infrastructure setup in
terraform.

#####
provider "aws" {
  alias = "America" #This can be anything eg:abc
  region = "us-east-1"
}

provider "aws" {
  alias = "us-west-2"
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  provider = aws.America  ##you can mention the alias in provider. so it will create in single region
}

resource "aws_instance" "example2" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  provider = "aws.us-west-2"
}
########
