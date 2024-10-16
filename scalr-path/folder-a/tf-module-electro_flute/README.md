# tf-module-flute

## Overview
This Terraform module initializes a `null_resource` to simulate playing the flute.

## Usage
```hcl
module "flute" {
  source = "./tf-module-flute"
}

output "instrument_name" {
  value = module.flute.instrument_name
}
