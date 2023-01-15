#resource "aws_spot_instance_request" "test" {
#  ami                    = "ami-0a017d8ceb274537d"
#  instance_type          = "t3.micro"
#  vpc_security_group_ids = [aws_security_group.allow_tls.id]
#}