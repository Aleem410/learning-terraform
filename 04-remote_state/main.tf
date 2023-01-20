terraform {
  backend "s3" {
    bucket = "terraform-b69"
    key    = "demo/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "sample" {
  default = "Hello"
}

output "sample" {
  value = var.sample
}

