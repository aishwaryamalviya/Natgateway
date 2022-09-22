resource "aws_route_table" "Public-Subnet-RT" {
  vpc_id = aws_vpc.custom.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Internet_Gateway.id
  }

  tags = {
    Name = "Public-Subnet-RT"
  }
}

resource "aws_route_table_association" "RT-IG-Association" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.Public-Subnet-RT.id
}

resource "aws_route_table" "Private-Subnet-RT" {
  vpc_id = aws_vpc.custom.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgateway.id
  }

  tags = {
    Name = "Private-Subnet-RT"
  }
}

resource "aws_route_table_association" "RT-IG-Association2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.Private-Subnet-RT.id
}

