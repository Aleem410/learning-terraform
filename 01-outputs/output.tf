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

data "aws_ec2_spot_price" "NEW" {
  instance_type     = "t3.small"
  availability_zone = "us-east-1"
}
output "PRICE" {
  value = data.aws_ec2_spot_price.NEW.id
}