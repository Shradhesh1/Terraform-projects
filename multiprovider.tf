provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
  
} 
provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}

resource "aws_instance" "DemoInstance" {
  ami           = "ami-020cba7c55df1f615" # Example AMI ID, replace with a valid one
  instance_type = "t2.micro"
  key_name      = "dockerkey1"
  provider = aws.us-east-1

  tags = {
    Name = "DemoInstance"
  }
}
resource "aws_instance" "DemoInstance2" {
    ami           = "ami-020cba7c55df1f615" # Example AMI ID, replace with a valid one
    instance_type = "t2.micro"
    key_name      = "dockerkey1"
    provider = aws.us-west-2

    tags = {
      Name = "DemoInstance2"
    }
}
