# Export Rules

This submodule illustrates how to manage data export rules.

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

## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_export_rules"></a> [export\_rules](#input\_export\_rules)

Description: contains all log analytics data export rules

Type:

```hcl
map(object({
    name                    = optional(string, null)
    resource_group_name     = optional(string, null)
    workspace_id            = string
    destination_resource_id = string
    table_names             = list(string)
    enabled                 = optional(bool, true)
  }))
```

Default: `{}`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: contains the resourcegroup name

Type: `string`

Default: `null`

## Outputs

No outputs.
<!-- END_TF_DOCS -->
