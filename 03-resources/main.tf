resource "aws_spot_instance_request" "test" {
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "test"
  }
}

output "public_ip" {
  value = aws_spot_instance_request.test.public_ip

}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = vpc-00a494e89f26a41c5

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}