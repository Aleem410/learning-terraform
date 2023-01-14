
data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owner            = "827190588206"
}
output "AMI_ID" {
  value = "data.aws_ami.example.id"
  }
