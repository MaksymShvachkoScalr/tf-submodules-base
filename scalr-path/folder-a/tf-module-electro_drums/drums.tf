# tf-module-drums/main.tf
variable "name" {
  type    = string
 # default = "electro-drums"
}

resource "null_resource" "instrument" {
  provisioner "local-exec" {
    command = "echo Playing the ${var.name} max"
  }
}

output "instrument_name" {
  value = var.name
}
