#resource "aws_spot_instance_request" "test" {
#  count         = 2
#  ami           = "ami-0a017d8ceb274537d"
#  instance_type = "t3.micro"
#  tags = {
#    Name = "instance-${count.index}"
#  }
#}
#
#output "public_ip" {
#  value = aws_spot_instance_request.test.*.public_ip
#}

module "vars" {
  source = "./vars"
  sgid = module.sg2.sgid
}

module "sg2" {
  source = "./sg2"
}


