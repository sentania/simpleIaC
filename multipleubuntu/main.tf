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
  # raw resource set/object returned by deployment
  resources = vra_deployment.this.resources

  # extract only machines: { "machineName" => { id = "...", type = "Cloud.Machine" } }
  simple_machine_metadata = {
    for r in local.resources :
    r.name => {
      id   = r.id
      type = r.type
    }
    if r.type == "Cloud.Machine"
  }
}
