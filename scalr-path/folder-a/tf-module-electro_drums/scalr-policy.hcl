version = "v1"

#policy "terraform_version_check" {
#    enabled = true
#    enforcement_level = "soft-mandatory"
#}

policy "terraform_min_version" {
  enabled = true
  enforcement_level = "hard-mandatory"
}


policy "terraform_suggested_version" {
  enabled = true
  enforcement_level = "soft-mandatory"
}
