# workspace
resource "azurerm_log_analytics_workspace" "this" {
  resource_group_name = coalesce(
    var.workspace.resource_group_name, var.resource_group_name
  )

  location = coalesce(
    var.workspace.location, var.location
  )

  tags = coalesce(
    var.workspace.tags, var.tags
  )

  name                                    = var.workspace.name
  sku                                     = var.workspace.sku
  daily_quota_gb                          = var.workspace.daily_quota_gb
  internet_ingestion_access_type          = var.workspace.internet_ingestion_access_type
  internet_query_access_type              = var.workspace.internet_query_access_type
  retention_in_days                       = var.workspace.retention
  reservation_capacity_in_gb_per_day      = var.workspace.reservation_capacity_in_gb_per_day
  allow_resource_only_permissions         = var.workspace.allow_resource_only_permissions
  cmk_for_query_forced                    = var.workspace.cmk_for_query_forced
  data_collection_rule_id                 = var.workspace.data_collection_rule_id
  local_authentication_enabled            = var.workspace.local_authentication_enabled
  immediate_data_purge_on_30_days_enabled = var.workspace.immediate_data_purge_on_30_days_enabled

  dynamic "identity" {
    for_each = var.workspace.identity != null ? { "this" = var.workspace.identity } : {}

    content {
      type         = identity.value.type
      identity_ids = identity.value.identity_ids
    }
  }
}

# solutions
resource "azurerm_log_analytics_solution" "this" {
  for_each = var.workspace.solutions

  resource_group_name = coalesce(
    var.workspace.resource_group_name, var.resource_group_name
  )

  location = coalesce(
    var.workspace.location, var.location
  )

  solution_name = coalesce(
    each.value.name, each.key
  )

  workspace_resource_id = azurerm_log_analytics_workspace.this.id
  workspace_name        = azurerm_log_analytics_workspace.this.name

  tags = coalesce(
    each.value.tags, var.tags
  )

  plan {
    publisher      = coalesce(each.value.plan.publisher, "Microsoft")
    promotion_code = each.value.plan.promotion_code
    product = coalesce(
      each.value.plan.product, "OMSGallery/${each.key}"
    )
  }
}

# tables
resource "azurerm_log_analytics_workspace_table" "this" {
  for_each = var.workspace.tables

  name = coalesce(
    each.value.name, each.key
  )

  workspace_id            = azurerm_log_analytics_workspace.this.id
  plan                    = each.value.plan
  total_retention_in_days = each.value.total_retention_in_days
  retention_in_days       = each.value.plan == "Basic" ? null : 30
}

# data export rules
resource "azurerm_log_analytics_data_export_rule" "this" {
  for_each = var.workspace.export_rules

  resource_group_name = coalesce(
    var.workspace.resource_group_name, var.resource_group_name
  )

  name = coalesce(
    each.value.name, each.key
  )

  workspace_resource_id   = azurerm_log_analytics_workspace.this.id
  destination_resource_id = each.value.destination_resource_id
  table_names             = each.value.table_names
  enabled                 = each.value.enabled
}

# linked services, applicable for automation accounts only
resource "azurerm_log_analytics_linked_service" "this" {
  for_each = var.workspace.linked_service != null ? { "this" = var.workspace.linked_service } : {}

  resource_group_name = coalesce(
    var.workspace.resource_group_name, var.resource_group_name
  )

  workspace_id    = azurerm_log_analytics_workspace.this.id
  read_access_id  = each.value.read_access_id
  write_access_id = each.value.write_access_id
}

# linked storage
resource "azurerm_log_analytics_linked_storage_account" "this" {
  for_each = var.workspace.linked_storage

  resource_group_name = coalesce(
    var.workspace.resource_group_name, var.resource_group_name
  )

  data_source_type    = each.value.data_source_type
  workspace_id        = azurerm_log_analytics_workspace.this.id
  storage_account_ids = each.value.storage_account_ids
}
