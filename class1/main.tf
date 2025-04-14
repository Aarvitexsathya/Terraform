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