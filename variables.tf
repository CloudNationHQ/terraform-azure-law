variable "workspace" {
  description = "Contains all log analytics workspace configuration"
  type = object({
    name                                    = string
    resource_group_name                     = optional(string, null)
    location                                = optional(string, null)
    sku                                     = optional(string, "PerGB2018")
    daily_quota_gb                          = optional(number, null)
    internet_ingestion_enabled              = optional(bool, true)
    internet_query_enabled                  = optional(bool, true)
    retention                               = optional(number, 30)
    reservation_capacity_in_gb_per_day      = optional(number, null)
    allow_resource_only_permissions         = optional(bool, true)
    cmk_for_query_forced                    = optional(bool, false)
    data_collection_rule_id                 = optional(string, null)
    local_authentication_enabled            = optional(bool, true)
    immediate_data_purge_on_30_days_enabled = optional(bool, false)
    tags                                    = optional(map(string))
    identity = optional(object({
      type         = string
      identity_ids = optional(list(string), null)
    }), null)
    solutions = optional(map(object({
      name                = optional(string, null)
      location            = optional(string, null)
      resource_group_name = optional(string, null)
      tags                = optional(map(string))
      plan = optional(object({
        publisher      = optional(string, "Microsoft")
        promotion_code = optional(string, null)
        product        = optional(string, null)
      }), {}),
    })), {})
    tables = optional(map(object({
      name                    = optional(string, null)
      plan                    = optional(string, "Analytics")
      total_retention_in_days = optional(number, 30)
      retention_in_days       = optional(number, 30)
    })), {})
    export_rules = optional(map(object({
      name                    = optional(string, null)
      resource_group_name     = optional(string, null)
      destination_resource_id = string
      table_names             = list(string)
      enabled                 = optional(bool, true)
    })), {})
    linked_service = optional(object({
      resource_group_name = optional(string, null)
      read_access_id      = optional(string, null)
      write_access_id     = optional(string, null)
    }), null)
    linked_storage = optional(map(object({
      data_source_type    = string
      resource_group_name = optional(string, null)
      storage_account_ids = list(string)
    })), {})
  })
  validation {
    condition     = var.workspace.location != null || var.location != null
    error_message = "location must be provided either in the config object or as a separate variable."
  }

  validation {
    condition     = var.workspace.resource_group_name != null || var.resource_group_name != null
    error_message = "resource group name must be provided either in the config object or as a separate variable."
  }
}

variable "naming" {
  description = "contains naming convention"
  type        = map(string)
  default     = {}
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
