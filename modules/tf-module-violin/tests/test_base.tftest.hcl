run "base" {
  module {
    source = "../"  # шлях з tests/ до кореня модуля
  }

  assert {
    condition     = run.base.outputs.instrument_name == "violin"
    error_message = "Default name must be 'violin'"
  }
}
