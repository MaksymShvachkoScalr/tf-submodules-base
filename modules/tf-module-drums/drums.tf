# tf-module-drums/main.tf
variable "name" {
  type    = string
  default = "drums"
}

resource "null_resource" "instrument" {
  provisioner "local-exec" {
    command = "echo We are playing the ${var.name} today!"
  }
}

output "instrument_name" {
  value = var.name
}
