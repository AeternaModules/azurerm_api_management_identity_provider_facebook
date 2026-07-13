variable "api_management_identity_provider_facebooks" {
  description = <<EOT
Map of api_management_identity_provider_facebooks, attributes below
Required:
    - api_management_name
    - app_id
    - app_secret
    - app_secret_key_vault_id (optional, alternative to app_secret)
    - app_secret_key_vault_secret_name (optional, alternative to app_secret)
    - resource_group_name
EOT

  type = map(object({
    api_management_name              = string
    app_id                           = string
    app_secret                       = string
    app_secret_key_vault_id          = optional(string)
    app_secret_key_vault_secret_name = optional(string)
    resource_group_name              = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_facebooks : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_facebooks : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_facebooks : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_facebooks : (
        length(v.app_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_facebooks : (
        length(v.app_secret) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

