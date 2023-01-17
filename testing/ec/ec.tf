resource "aws_spot_instance_request" "test" {
  ami           = var.ami
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sgid]

  tags = {
    Name = "test"
  }
}

variable "sgid" {}
variable "ami" {}

