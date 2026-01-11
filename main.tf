resource "azurerm_api_management_identity_provider_facebook" "api_management_identity_provider_facebooks" {
  for_each = var.api_management_identity_provider_facebooks

  api_management_name = each.value.api_management_name
  app_id              = each.value.app_id
  app_secret          = each.value.app_secret
  resource_group_name = each.value.resource_group_name
}

