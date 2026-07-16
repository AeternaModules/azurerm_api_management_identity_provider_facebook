output "api_management_identity_provider_facebooks_id" {
  description = "Map of id values across all api_management_identity_provider_facebooks, keyed the same as var.api_management_identity_provider_facebooks"
  value       = { for k, v in azurerm_api_management_identity_provider_facebook.api_management_identity_provider_facebooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_identity_provider_facebooks_api_management_name" {
  description = "Map of api_management_name values across all api_management_identity_provider_facebooks, keyed the same as var.api_management_identity_provider_facebooks"
  value       = { for k, v in azurerm_api_management_identity_provider_facebook.api_management_identity_provider_facebooks : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_identity_provider_facebooks_app_id" {
  description = "Map of app_id values across all api_management_identity_provider_facebooks, keyed the same as var.api_management_identity_provider_facebooks"
  value       = { for k, v in azurerm_api_management_identity_provider_facebook.api_management_identity_provider_facebooks : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "api_management_identity_provider_facebooks_app_secret" {
  description = "Map of app_secret values across all api_management_identity_provider_facebooks, keyed the same as var.api_management_identity_provider_facebooks"
  value       = { for k, v in azurerm_api_management_identity_provider_facebook.api_management_identity_provider_facebooks : k => v.app_secret if v.app_secret != null && length(v.app_secret) > 0 }
  sensitive   = true
}
output "api_management_identity_provider_facebooks_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_identity_provider_facebooks, keyed the same as var.api_management_identity_provider_facebooks"
  value       = { for k, v in azurerm_api_management_identity_provider_facebook.api_management_identity_provider_facebooks : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

