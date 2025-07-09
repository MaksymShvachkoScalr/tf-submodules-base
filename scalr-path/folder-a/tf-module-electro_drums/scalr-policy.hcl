# Simplified scalr-policy.hcl
# Basic Sentinel policy for HashiCorp Scalr

main = rule {
  validate_workspace and
  restrict_providers and
  block_sensitive_resources
}

# Basic workspace requirements
validate_workspace = rule {
  scalr.workspace.terraform_version starts_with "1." and  # Must use Terraform 1.x
  scalr.workspace.auto_apply == false                    # No auto-apply
}

# Allowed cloud providers
restrict_providers = rule {
  all scalr.workspace.providers as provider {
    provider in ["aws", "azurerm", "google"]
  }
}

# Block sensitive resources
block_sensitive_resources = rule {
  all scalr.plan.resource_changes as change {
    change.type not in [
      "aws_iam_user",
      "google_service_account_key",
      "azurerm_key_vault_secret"
    ]
  }
}
