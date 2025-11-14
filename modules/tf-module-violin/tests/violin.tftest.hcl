// tests/violin.tftest.hcl
// Tests for tf-module-violin

// 1. Validate default behaviour (no inputs overridden)
run "default_name" {
  command = plan

  // Check that the null_resource.instrument is present
  assert {
    condition     = can(resource.null_resource.instrument.id)
    error_message = "Expected null_resource.instrument to exist in the plan"
  }

  // Check that the output uses the default variable value ("violin")
  assert {
    condition     = output.instrument_name == "violin"
    error_message = "Expected instrument_name output to equal default value 'violin'"
  }
}

// 2. Validate that overriding `name` propagates to the output
run "custom_name" {
  command = plan

  variables {
    name = "electric_violin"
  }

  // Output should reflect overridden variable
  assert {
    condition     = output.instrument_name == "electric_violin"
    error_message = "Expected instrument_name output to equal overridden value 'electric_violin'"
  }

  // Resource should still exist when name is overridden
  assert {
    condition     = can(resource.null_resource.instrument.id)
    error_message = "Expected null_resource.instrument to exist when using a custom name"
  }
}
