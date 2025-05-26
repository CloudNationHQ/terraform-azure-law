module "naming" {
  source  = "cloudnationhq/naming/azure"
  version = "~> 0.24"

  suffix = ["law", "solutions"]
}

module "rg" {
  source  = "cloudnationhq/rg/azure"
  version = "~> 2.0"

  groups = {
    demo = {
      name     = module.naming.resource_group.name_unique
      location = "westeurope"
    }
  }
}

module "analytics" {
  source  = "cloudnationhq/law/azure"
  version = "~> 3.0"

  workspace = {
    name                = module.naming.log_analytics_workspace.name_unique
    location            = module.rg.groups.demo.location
    resource_group_name = module.rg.groups.demo.name

    solutions = {
      "ContainerInsights" = {}
      "VMInsights"        = {}
      "AzureActivity"     = {}
    }
  }
}
