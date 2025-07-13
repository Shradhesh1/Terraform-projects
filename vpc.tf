# step1 create vpc 

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    name = "MyTerraformVPC"

  }
}

# step2 create  public subnets

resource "aws_subnet" "PublicSubnet" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
}

# step3 create private subnets
resource "aws_subnet" "privateSubnet" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"
}

# step4 create internet gateway

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.my_vpc.id
  
}

# step5 create route table for public subnets

resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id

}
}

# step6 associate route table with public subnet.connection {
  
  resource "aws_route_table_association" "PublicRTassociation" {
    
    subnet_id = aws_subnet.PublicSubnet.id
    route_table_id = aws_route_table.PublicRT.id


}

