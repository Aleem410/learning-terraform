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

variable "sampleXX" {
  default = {
    string = "hello"
    number = 100
  }
}

output resultXX {
  value = var.sampleXX["number"]
}

output resultYY {
  value = lookup(sampleXX, "string", null)

}
