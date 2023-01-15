resource "aws_instance" "test" {
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t3.small"
  availability_zone = "us-east-1"
}

output "state" {
  value = aws_instance.test.instance_state

}