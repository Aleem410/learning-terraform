resource "aws_spot_instance_request" "test" {
  ami           = "ami-0a017d8ceb274537d"
  count  = 2
  instance_type = "t3.micro"

  tags = {
    Name = "instance-${count.index}"
  }
}

output "poublic_ip" {
  value = aws_spot_instance_request.test.*.public_ip
}