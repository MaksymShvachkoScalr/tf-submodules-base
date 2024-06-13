# tf-module-piano

## Overview
This Terraform module initializes a `null_resource` to simulate playing the piano.

## Usage
```hcl
module "piano" {
  source = "./tf-module-piano"
}

output "instrument_name" {
  value = module.piano.instrument_name
}
