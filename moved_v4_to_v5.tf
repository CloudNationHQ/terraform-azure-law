moved {
  from = azurerm_log_analytics_workspace.ws
  to   = azurerm_log_analytics_workspace.this
}

moved {
  from = azurerm_log_analytics_solution.solutions
  to   = azurerm_log_analytics_solution.this
}

moved {
  from = azurerm_log_analytics_workspace_table.tables
  to   = azurerm_log_analytics_workspace_table.this
}

moved {
  from = azurerm_log_analytics_data_export_rule.rule
  to   = azurerm_log_analytics_data_export_rule.this
}

moved {
  from = azurerm_log_analytics_linked_service.link["linked_service"]
  to   = azurerm_log_analytics_linked_service.this["this"]
}

moved {
  from = azurerm_log_analytics_linked_storage_account.link
  to   = azurerm_log_analytics_linked_storage_account.this
}
