output "test" {
  value = "hello wolrd"
}

data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

output "AMI_ID" {
  value = data.aws_ami.example.id
}

resource "aws_ec2_host" "table" {
  instance_type     = "t3.micro"
  availability_zone = "us-east-1"
}
