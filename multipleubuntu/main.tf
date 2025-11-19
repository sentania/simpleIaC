data "vra_project" "this" {
  name = var.project_name
}
data "vra_catalog_item" "this" {
  name = "Multiple Ubuntu"
}
resource "vra_deployment" "this" {
  name        = var.deployment_name
  description = var.description

  catalog_item_id      = data.vra_catalog_item.this.id
  catalog_item_version  = var.catalog_item_version
  project_id        = data.vra_project.this.id

  timeouts {
    create = "60m"
    delete = "2h"
  }

  inputs = {
    vmCount = var.vmcount 
  }
}

locals {
  resources = vra_deployment.this.resources

  machines = {
    for r in local.resources :
    r.name => r
    if r.type == "Cloud.Machine"
  }
}

data "vra_machine" "all" {
  for_each = local.machines
  id       = each.value.id
}
