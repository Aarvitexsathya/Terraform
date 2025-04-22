provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "Tf-class1" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
  tags = {
    Name     = "Tf-class1"
    TeamName = "Devops"
  }
    connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("~/.ssh.id_rsa")
    host = self.public_ip # ec2-user@publicip, ssh-->connection-->load your ppk file
  }
#File provisioner to copy a file from local to remote EC2 instance  
provisioner "file" {
    source = "app.py"
    destination = "/home/ec2-user/app.py"
  
}
#copy code to remote servers
  provisioner "remote-exec" {
    inline = [ 
        "sudo yum update -y",
        "sudo yum install nginx tree -y",
        "sudo service nginx start",
     ]
    
  }
}
