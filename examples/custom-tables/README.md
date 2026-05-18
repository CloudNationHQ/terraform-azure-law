This deploys custom tables within a log analytics workspace.

## Notes

Custom tables must end with the `_CL` suffix and are created via the azapi provider since the azurerm provider only supports updating existing built-in tables.
