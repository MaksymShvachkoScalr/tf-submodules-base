# tf-module-drums

## Overview
This Terraform module initializes a `null_resource` to simulate playing the drums.

## Usage
```hcl
module "drums" {
  source = "./tf-module-drums"
}

output "instrument_name" {
  value = module.drums.instrument_name
}
