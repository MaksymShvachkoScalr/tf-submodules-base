# tf-module-violin

## Overview
This Terraform module initializes a `null_resource` to simulate playing the violin.

## Usage
```hcl
module "violin" {
  source = "./tf-module-violin"
}

output "instrument_name" {
  value = module.violin.instrument_name
}

