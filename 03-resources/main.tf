#resource "aws_spot_instance_request" "test" {
#  ami           = "ami-0a017d8ceb274537d"
#  instance_type = "t3.micro"
#
#  tags = {
#    Name = "test"
#  }
#}
#
#output "public_ip" {
#  value = aws_spot_instance_request.test.public_ip
#
#}

resource "github_repository" "test_repository" {
  name        = "test"
  description = "My awesome codebase"

  visibility = "public"

}