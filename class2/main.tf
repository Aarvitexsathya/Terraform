resource "aws_vpc" "aarvitex" {
    cidr_block = var.vpc_cidr
    tags = {
      Name = var.vpc_name
      Owner = "aarvitex"
      environment = var.environment

    }
  
}