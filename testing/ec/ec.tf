resource "aws_spot_instance_request" "test" {
  count         = 2
  ami           = var.ami[count.index]
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sgid]

  tags = {
    Name = "ami-${count.index}"
  }
}



