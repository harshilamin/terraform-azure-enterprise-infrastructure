run "default_separator" {
  command = plan

  variables {
    resource_type = "rg"
    workload      = "platform"
    environment   = "dev"
    region        = "cus"
    sequence      = 1
  }

  assert {
    condition     = output.resource_name == "rg-platform-dev-cus-001"
    error_message = "The default naming pattern is incorrect."
  }
}

run "no_separator" {
  command = plan

  variables {
    resource_type = "st"
    workload      = "platform"
    environment   = "prod"
    region        = "cus"
    sequence      = 12
    separator     = ""
  }

  assert {
    condition     = output.resource_name == "stplatformprodcus012"
    error_message = "The compact naming pattern is incorrect."
  }
}
