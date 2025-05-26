# Log Analytic Workspaces

This terraform module simplifies the creation of log analytics resources on the azure cloud platform, allowing users to collect and analyze data from a variety of sources. With this module, users can easily provision a centralized, scalable, and secure log analytics solution with minimal effort.

## Features

Offers support for multiple solutions, facilitating seamless integration of various monitoring and analytics capabilities.

Utilization of terratest for robust validation.

Supports multiple data export rules to streamline data management.

Ability to generate a user assigned identity or bring your own if specified.

Enables linking with an automation account.

Supports tables for enhanced data organization.

Supports linking multiple storage accounts with different data source types.

Offers three-tier naming hierarchy (explicit, convention-based, or key-based) for flexible resource management.

<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (~> 1.0)

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (~> 4.0)

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) (~> 4.0)

## Resources

The following resources are used by this module:

- [azurerm_log_analytics_data_export_rule.rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_data_export_rule) (resource)
- [azurerm_log_analytics_linked_service.link](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_linked_service) (resource)
- [azurerm_log_analytics_linked_storage_account.link](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_linked_storage_account) (resource)
- [azurerm_log_analytics_solution.solutions](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_solution) (resource)
- [azurerm_log_analytics_workspace.ws](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) (resource)
- [azurerm_log_analytics_workspace_table.tables](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace_table) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_workspace"></a> [workspace](#input\_workspace)

Description: Contains all log analytics workspace configuration

Type:

```hcl
object({
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
    local_authentication_disabled           = optional(bool, false)
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
```

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_location"></a> [location](#input\_location)

Description: default azure region to be used.

Type: `string`

Default: `null`

### <a name="input_naming"></a> [naming](#input\_naming)

Description: contains naming convention

Type: `map(string)`

Default: `{}`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: default resource group to be used.

Type: `string`

Default: `null`

### <a name="input_tags"></a> [tags](#input\_tags)

Description: tags to be added to the resources

Type: `map(string)`

Default: `{}`

## Outputs

The following outputs are exported:

### <a name="output_solutions"></a> [solutions](#output\_solutions)

Description: contains log analytics solutions

### <a name="output_workspace"></a> [workspace](#output\_workspace)

Description: contains all log analytics workspace settings
<!-- END_TF_DOCS -->

## Goals

For more information, please see our [goals and non-goals](./GOALS.md).

## Testing

For more information, please see our testing [guidelines](./TESTING.md)

## Notes

Using a dedicated module, we've developed a naming convention for resources that's based on specific regular expressions for each type, ensuring correct abbreviations and offering flexibility with multiple prefixes and suffixes.

Full examples detailing all usages, along with integrations with dependency modules, are located in the examples directory.

To update the module's documentation run `make doc`

## Contributors

We welcome contributions from the community! Whether it's reporting a bug, suggesting a new feature, or submitting a pull request, your input is highly valued.

For more information, please see our contribution [guidelines](./CONTRIBUTING.md). <br><br>

<a href="https://github.com/cloudnationhq/terraform-azure-law/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=cloudnationhq/terraform-azure-law" />
</a>

## License

MIT Licensed. See [LICENSE](./LICENSE) for full details.

## References

- [Documentation](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/log-analytics-workspace-overview)
- [Rest Api](https://learn.microsoft.com/en-us/rest/api/loganalytics/)
- [Rest Api Specs](https://github.com/Azure/azure-rest-api-specs/tree/1f449b5a17448f05ce1cd914f8ed75a0b568d130/specification/operationalinsights/resource-manager)
