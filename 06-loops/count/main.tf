resource "aws_spot_instance_request" "test" {
  ami           = var.amis[count.index]
#  ami           =element(var.amis, count.index )
  count  = 2
  instance_type = "t3.micro"

  tags = {
    Name = "instance-${count.index}"
  }
}

output "public_ip" {
  value = aws_spot_instance_request.test.*.public_ip
}

variable "amis" {
  default = [
    "ami-0a017d8ceb274537d",
    "ami-0b5eea76982371e91"
  ]
}