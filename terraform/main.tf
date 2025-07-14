provider "aws" {
  region     = "eu-west-1"
  
}


resource "aws_instance" "ec2" {
  ami           = "ami-01f23391a59163da9"
  instance_type = "t2.micro"
  key_name = "firstkey"
  security_groups = [aws_security_group.mysecgroup.name]
  tags = {
    Name = "my_instance"
  }
}