module "practice1" {
  source = ".//practice1"
  instance_type = "t3.micro"
  sgid = module.practice1.sgid
}

module "practice2" {
  source = ".//practice2"
  instance_type = "t3.micro"
  sgid = module.practice2.sgid
}