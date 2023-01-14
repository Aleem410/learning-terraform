output "test" {
  value = "hello world to the terraform"
}

data "aws_ami" "example" {
  id = var.aws_ami_id
}