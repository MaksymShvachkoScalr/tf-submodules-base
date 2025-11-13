run "invalid_type" {
  command = plan

  module {
    source = "../"
  }

  variables = {
    # name очікує string
    name = 123
  }

  expect_failures = [
    "variables.name"
  ]
}
