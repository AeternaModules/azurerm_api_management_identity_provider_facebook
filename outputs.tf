output "api_management_identity_provider_facebooks" {
  description = "All api_management_identity_provider_facebook resources"
  value       = azurerm_api_management_identity_provider_facebook.api_management_identity_provider_facebooks
  sensitive   = true
}
output "api_management_identity_provider_facebooks_api_management_name" {
  description = "List of api_management_name values across all api_management_identity_provider_facebooks"
  value       = [for k, v in azurerm_api_management_identity_provider_facebook.api_management_identity_provider_facebooks : v.api_management_name]
}
output "api_management_identity_provider_facebooks_app_id" {
  description = "List of app_id values across all api_management_identity_provider_facebooks"
  value       = [for k, v in azurerm_api_management_identity_provider_facebook.api_management_identity_provider_facebooks : v.app_id]
}
output "api_management_identity_provider_facebooks_app_secret" {
  description = "List of app_secret values across all api_management_identity_provider_facebooks"
  value       = [for k, v in azurerm_api_management_identity_provider_facebook.api_management_identity_provider_facebooks : v.app_secret]
  sensitive   = true
}
output "api_management_identity_provider_facebooks_resource_group_name" {
  description = "List of resource_group_name values across all api_management_identity_provider_facebooks"
  value       = [for k, v in azurerm_api_management_identity_provider_facebook.api_management_identity_provider_facebooks : v.resource_group_name]
}

