module "sg" {
  source = "./sg"
}

module "ec2" {
  source = "./ec2"
  sgid = module.sg.sgid
}