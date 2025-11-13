run "base" {
  module {
    source = "../" 
  }

  assert {
    condition     = run.base.outputs.instrument_name == "violin"
    error_message = "Default name must be 'violin'"
  }
}
