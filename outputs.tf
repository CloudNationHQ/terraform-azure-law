output "workspace" {
  description = "contains all log analytics workspace settings"
  value       = azurerm_log_analytics_workspace.ws
}

output "solutions" {
  description = "contains log analytics solutions"
  value       = azurerm_log_analytics_solution.solutions
}

output "tables" {
  description = "contains log analytics workspace tables"
  value       = azurerm_log_analytics_workspace_table.tables
}

output "export_rules" {
  description = "contains log analytics data export rules"
  value       = azurerm_log_analytics_data_export_rule.rule
}

output "linked_service" {
  description = "contains log analytics linked service"
  value       = azurerm_log_analytics_linked_service.link
}

output "linked_storage" {
  description = "contains log analytics linked storage accounts"
  value       = azurerm_log_analytics_linked_storage_account.link
}
