# Tables

This deploys tables within a log analytic workspace.

## Types

```hcl
workspace = object({
  name           = string
  location       = string
  resource_group = string
  tables      = optional(map(object({
    plan                    = string
    retention_in_days       = number
    total_retention_in_days = number
  })))
})
```

## Notes

The retention_in_days cannot be specified when plan is Basic because the retention is fixed at eight days.
