module "sg" {
  source = "./sg"
}

module "ec2" {
  source = "./ec2"
  sgid = module.sg.sgid
  allow_all = module.sg.allow_all
  ami  = "ami-0a017d8ceb274537d"
}

module "ec21" {
  source = "./ec2"
  sgid = module.sg.sgid
  allow_all = module.sg.allow_all
  ami  = "ami-0b5eea76982371e91"
}
