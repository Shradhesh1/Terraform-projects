provider "aws" {
  region = "us-east-1"
  
} 
resource "aws_instance" "DemoInstance" {
  ami           = "ami-020cba7c55df1f615" # Example AMI ID, replace with a valid one
  instance_type = "t2.micro"
  key_name      = "dockerkey1"

  tags = {
    Name = "DemoInstance"
  }
  
}