resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.custom.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "Public Subnet"
  }
}
resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.custom.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "Private Subnet"
  }
}

