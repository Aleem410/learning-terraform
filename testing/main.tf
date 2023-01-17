module "security_group" {
  source = "./security_group"
}

module "ec" {
  source = "./ec"
  sgid = module.security_group.sgid
}