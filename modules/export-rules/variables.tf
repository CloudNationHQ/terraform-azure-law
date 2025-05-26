variable "export_rules" {
  description = "contains all log analytics data export rules"
  type = map(object({
    name                    = optional(string, null)
    resource_group_name     = optional(string, null)
    workspace_id            = string
    destination_resource_id = string
    table_names             = list(string)
    enabled                 = optional(bool, true)
  }))
  default = {}
}

variable "resource_group_name" {
  description = "contains the resourcegroup name"
  type        = string
  default     = null
}
