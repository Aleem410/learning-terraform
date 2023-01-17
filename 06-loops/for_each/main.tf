variable "instances" {
  default = {
    one = {
      ami           = "ami-0a017d8ceb274537d"
      instance_type = "t3.micro"
    }
    Two = {
      ami           = "ami-0b5eea76982371e91"
      instance_type = "t2.micro"
    }
  }
}
resource "aws_spot_instance_request" "test" {
  for_each = var.instances
  ami           = each.value["ami"]
  instance_type = each.value["instance_type"]

  tags = {
    Name = "instance-${each.key}"
  }
}