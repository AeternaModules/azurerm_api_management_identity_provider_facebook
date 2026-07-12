data "azurerm_key_vault_secret" "app_secret" {
  for_each     = { for k, v in var.api_management_identity_provider_facebooks : k => v if v.app_secret_key_vault_id != null && v.app_secret_key_vault_secret_name != null }
  name         = each.value.app_secret_key_vault_secret_name
  key_vault_id = each.value.app_secret_key_vault_id
}
resource "azurerm_api_management_identity_provider_facebook" "api_management_identity_provider_facebooks" {
  for_each = var.api_management_identity_provider_facebooks

  api_management_name = each.value.api_management_name
  app_id              = each.value.app_id
  app_secret          = each.value.app_secret != null ? each.value.app_secret : try(data.azurerm_key_vault_secret.app_secret[each.key].value, null)
  resource_group_name = each.value.resource_group_name
}

