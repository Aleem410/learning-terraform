module "security_group" {
  source = "./security_group"
}

module "ec" {
  source = "./ec"
  sgid = module.security_group.sgid
#  ami = "ami-0a017d8ceb274537d"
}

#module "ec1" {
#  source = "./ec"
#  sgid = module.security_group.sgid
#  ami = "ami-0b5eea76982371e91"
#}