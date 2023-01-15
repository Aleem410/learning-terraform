resource "aws_spot_instance_request" "test" {
  ami                    = var.ami
  instance_type          = "t3.micro"
  vpc_security_group_ids = [
         var.sgid,
         var.allow_all
  ]
}

variable "sgid" {}
variable "ami" {}
variable "allow_all" {}

