module "naming" {
  source  = "cloudnationhq/naming/azure"
  version = "~> 0.24"

  suffix = ["law", "service"]
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

module "automation" {
  source  = "cloudnationhq/aa/azure"
  version = "~> 2.0"

  config = {
    name           = module.naming.automation_account.name
    resource_group = module.rg.groups.demo.name
    location       = module.rg.groups.demo.location
  }
}

module "analytics" {
  source  = "cloudnationhq/law/azure"
  version = "~> 3.0"

  workspace = {
    name                = module.naming.log_analytics_workspace.name_unique
    location            = module.rg.groups.demo.location
    resource_group_name = module.rg.groups.demo.name

    linked_service = {
      read_access_id = module.automation.config.id
    }
  }
}
