# data export rules
resource "azurerm_log_analytics_data_export_rule" "this" {
  for_each = var.export_rules

  name = coalesce(
    each.value.name, each.key
  )

  resource_group_name = coalesce(
    each.value.resource_group_name, var.resource_group_name
  )

  workspace_resource_id   = each.value.workspace_id
  destination_resource_id = each.value.destination_resource_id
  table_names             = each.value.table_names
  enabled                 = each.value.enabled
}
