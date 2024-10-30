module "drums" {
  source = "./tf-module-drums"
}

output "instrument_name" {
  value = module.drums.instrument_name
}