output "workspace" {
  description = "contains all log analytics workspace settings"
  value       = azurerm_log_analytics_workspace.ws
}

output "solutions" {
  description = "contains log analytics solutions"
  value       = azurerm_log_analytics_solution.solutions
}
