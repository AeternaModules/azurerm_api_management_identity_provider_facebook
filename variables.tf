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
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_identity_provider_facebook's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: api_management_name
  #   source:    [from validate.ApiManagementServiceName] !matched
  # path: app_id
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: app_secret
  #   condition: length(value) > 0
  #   message:   must not be empty
}

