resource "aws_instance" "test" {
  ami           = "ami-0a017d8ceb274537d"
  instance_type = "t3.small"
}

output "public_ip" {
  value = aws_instance.test.public_ip

}