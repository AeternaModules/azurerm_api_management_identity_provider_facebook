variable "api_management_identity_provider_facebooks" {
  description = <<EOT
Map of api_management_identity_provider_facebooks, attributes below
Required:
    - api_management_name
    - app_id
    - app_secret
    - resource_group_name
EOT

  type = map(object({
    api_management_name = string
    app_id              = string
    app_secret          = string
    resource_group_name = string
  }))
}

