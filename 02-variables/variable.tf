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

#accessing variables with functions (element)
output "value" {
  value = element(var.testing, 1)
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

#accessing variables map with lookup
output resultYY {
  value = lookup(var.sampleXX, "string", null)

}

variable fruits{}

output FRUITS {
  value = var.fruits
}