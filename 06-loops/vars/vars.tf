resource "aws_spot_instance_request" "test1" {
  count         = 2
  #  ami           = var.amis[count.index]
  ami           = element(var.amis, count.index )
  instance_type = "t3.micro"
  vpc_security_group_ids = var.sgid
  tags = {
    Name = "ami-${count.index}"
  }
}

variable "sgid" {
  default = "sg-0d0b44e1148e9b818"
}
variable "amis" {
  default = [
    "ami-0a017d8ceb274537d",
    "ami-0b5eea76982371e91"
  ]
}
output "amis" {
  value = "var.amis"
}