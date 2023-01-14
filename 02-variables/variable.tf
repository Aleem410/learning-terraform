variable "sample" {
  default = "hello world"
}
output "sample" {
  value = var.sample
}

variable "testing" {
  default = [
   "hello",
    100
  ]
}
output "result" {
  value = var.testing[0]
}