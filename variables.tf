variable "workspace" {
  description = "Contains all log analytics workspace configuration"
  type = object({
    name                                    = string
    resource_group_name                     = optional(string)
    location                                = optional(string)
    sku                                     = optional(string)
    daily_quota_gb                          = optional(number)
    internet_ingestion_access_type          = optional(string)
    internet_query_access_type              = optional(string)
    retention                               = optional(number)
    reservation_capacity_in_gb_per_day      = optional(number)
    allow_resource_only_permissions         = optional(bool)
    cmk_for_query_forced                    = optional(bool)
    data_collection_rule_id                 = optional(string)
    local_authentication_enabled            = optional(bool)
    immediate_data_purge_on_30_days_enabled = optional(bool)
    tags                                    = optional(map(string))
    identity = optional(object({
      type         = string
      identity_ids = optional(list(string))
    }))
    solutions = optional(map(object({
      name                = optional(string)
      location            = optional(string)
      resource_group_name = optional(string)
      tags                = optional(map(string))
      plan = optional(object({
        publisher      = optional(string)
        promotion_code = optional(string)
        product        = optional(string)
      }), {}),
    })), {})
    tables = optional(map(object({
      name                    = optional(string)
      plan                    = optional(string)
      total_retention_in_days = optional(number)
      retention_in_days       = optional(number)
    })), {})
    export_rules = optional(map(object({
      name                    = optional(string)
      resource_group_name     = optional(string)
      destination_resource_id = string
      table_names             = list(string)
      enabled                 = optional(bool)
    })), {})
    linked_service = optional(object({
      resource_group_name = optional(string)
      read_access_id      = optional(string)
      write_access_id     = optional(string)
    }))
    linked_storage = optional(map(object({
      data_source_type    = string
      resource_group_name = optional(string)
      storage_account_ids = list(string)
    })), {})
  })
  validation {
    condition     = lookup(var.workspace, "location", null) != null || var.location != null
    error_message = "location must be provided either in the config object or as a separate variable."
  }

  validation {
    condition     = lookup(var.workspace, "resource_group_name", null) != null || var.resource_group_name != null
    error_message = "resource group name must be provided either in the config object or as a separate variable."
  }
}

variable "location" {
  description = "default azure region to be used."
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "default resource group to be used."
  type        = string
  default     = null
}

variable "tags" {
  description = "tags to be added to the resources"
  type        = map(string)
  default     = {}
}
