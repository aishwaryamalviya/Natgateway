resource "aws_instance" "pubvm1" {
  ami                         = "ami-024c319d5d14b463e"
  instance_type               = "t2.medium"
  security_groups             = [aws_security_group.allow_tls.id]
  subnet_id                   = aws_subnet.subnet1.id
  key_name                    = "lalit_vm"
  associate_public_ip_address = true

  tags = {
    Name = "pubvm"
  }
}

resource "aws_instance" "privm" {
  ami                         = "ami-024c319d5d14b463e"
  instance_type               = "t2.micro"
  security_groups             = [aws_security_group.allow_tls.id]
  subnet_id                   = aws_subnet.subnet2.id
  key_name                    = "lalit_vm"
  associate_public_ip_address = false

  tags = {
    Name = "privm"
  }
}

