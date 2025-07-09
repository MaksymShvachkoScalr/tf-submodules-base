# scalr-policy.hcl
# Basic Sentinel policy for Scalr

main = rule {
  validate_workspace_settings and
  restrict_providers
}

# Workspace validation rule
validate_workspace_settings = rule {
  scalr.workspace.terraform_version starts_with "1." and
  scalr.workspace.auto_apply == false
}

# Provider restriction rule
restrict_providers = rule {
  all scalr.workspace.providers as _, provider {
    provider in ["aws", "azurerm", "google"]
  }
}
