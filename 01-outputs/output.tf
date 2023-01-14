
data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}
output "AMI_ID" {
  value = "data.aws_ami.example.id"
  }
