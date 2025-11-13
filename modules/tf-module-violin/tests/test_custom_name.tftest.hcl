run "custom_name" {
  command = apply

  module {
    source = "../"
  }

  variables = {
    name = "cello"
  }

  assert {
    condition     = run.custom_name.outputs.instrument_name == "cello"
    error_message = "instrument_name must reflect provided 'name' variable"
  }
}
