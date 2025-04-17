terraform {
  backend "s3" {
    bucket = "statebackend16042025" #it's your own
    key = "sathya/terrafrom.tfstate"
    region = "us-east-1"
    encrypt = true
    
  }
}