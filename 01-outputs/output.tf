output "test" {
  value = "hello wolrd"
}

data "aws_ami" "example" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881/Centos-8-DevOps-Practice"]
}

output "AMI_ID" {
  value = data.aws_ami.example.id
}
