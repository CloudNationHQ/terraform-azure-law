# workspaces
resource "azurerm_log_analytics_workspace" "ws" {

  resource_group_name = coalesce(
    lookup(
      var.workspace, "resource_group_name", null
    ), var.resource_group_name
  )

  location = coalesce(
    lookup(var.workspace, "location", null
    ), var.location
  )

  name                                    = var.workspace.name
  sku                                     = var.workspace.sku
  daily_quota_gb                          = var.workspace.daily_quota_gb
  internet_ingestion_enabled              = var.workspace.internet_ingestion_enabled
  internet_query_enabled                  = var.workspace.internet_query_enabled
  retention_in_days                       = var.workspace.retention
  reservation_capacity_in_gb_per_day      = var.workspace.reservation_capacity_in_gb_per_day
  allow_resource_only_permissions         = var.workspace.allow_resource_only_permissions
  cmk_for_query_forced                    = var.workspace.cmk_for_query_forced
  data_collection_rule_id                 = var.workspace.data_collection_rule_id
  local_authentication_enabled            = var.workspace.local_authentication_enabled
  immediate_data_purge_on_30_days_enabled = var.workspace.immediate_data_purge_on_30_days_enabled

  tags = coalesce(
    var.workspace.tags, var.tags
  )

  dynamic "identity" {
    for_each = lookup(var.workspace, "identity", null) != null ? [var.workspace.identity] : []

    content {
      type         = identity.value.type
      identity_ids = identity.value.identity_ids
    }
  }
}

# solutions
resource "azurerm_log_analytics_solution" "solutions" {
  for_each = try(
    var.workspace.solutions, {}
  )

  resource_group_name = coalesce(
    lookup(
      var.workspace, "resource_group_name", null
    ), var.resource_group_name
  )

  location = coalesce(
    lookup(var.workspace, "location", null
    ), var.location
  )

  solution_name = coalesce(
    each.value.name, try(
      join("-", [var.naming.log_analytics_workspace, each.key]), null
    ), each.key
  )

  workspace_resource_id = azurerm_log_analytics_workspace.ws.id
  workspace_name        = azurerm_log_analytics_workspace.ws.name

  tags = coalesce(
    each.value.tags, var.tags
  )

  plan {
    publisher      = each.value.plan.publisher
    promotion_code = each.value.plan.promotion_code
    product = coalesce(
      each.value.plan.product, "OMSGallery/${each.key}"
    )
  }
}

# tables
resource "azurerm_log_analytics_workspace_table" "tables" {
  for_each = try(
    var.workspace.tables, {}
  )

  name = coalesce(
    each.value.name, try(
      join("-", [var.naming.log_analytics_workspace, each.key]), null
    ), each.key
  )

  workspace_id            = azurerm_log_analytics_workspace.ws.id
  plan                    = each.value.plan
  total_retention_in_days = each.value.total_retention_in_days
  retention_in_days       = each.value.plan == "Basic" ? null : 30
}

# data export rules
resource "azurerm_log_analytics_data_export_rule" "rule" {
  for_each = length(lookup(var.workspace, "export_rules", {})) > 0 ? lookup(var.workspace, "export_rules", {}) : {}

  resource_group_name = coalesce(
    lookup(
      var.workspace, "resource_group_name", null
    ), var.resource_group_name
  )

  name = coalesce(
    each.value.name, try(
      join("-", [var.naming.log_analytics_workspace, each.key]), null
    ), each.key
  )

  workspace_resource_id   = azurerm_log_analytics_workspace.ws.id
  destination_resource_id = each.value.destination_resource_id
  table_names             = each.value.table_names
  enabled                 = each.value.enabled
}

# linked services, applicable for automation accounts only
resource "azurerm_log_analytics_linked_service" "link" {
  for_each = var.workspace.linked_service != null ? { "linked_service" = var.workspace.linked_service } : {}

  resource_group_name = coalesce(
    lookup(
      var.workspace, "resource_group_name", null
    ), var.resource_group_name
  )

  workspace_id    = azurerm_log_analytics_workspace.ws.id
  read_access_id  = var.workspace.linked_service.read_access_id
  write_access_id = var.workspace.linked_service.write_access_id
}

# linked storage
resource "azurerm_log_analytics_linked_storage_account" "link" {
  for_each = lookup(var.workspace, "linked_storage", {})

  resource_group_name = coalesce(
    lookup(
      var.workspace, "resource_group_name", null
    ), var.resource_group_name
  )


  data_source_type      = each.value.data_source_type
  workspace_resource_id = azurerm_log_analytics_workspace.ws.id
  storage_account_ids   = each.value.storage_account_ids
}
