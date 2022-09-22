data "vra_project" "this" {
  name = var.project_name
}
data "vra_catalog_item" "this" {
  name = "Nginx"
}
resource "vra_deployment" "this" {
  name        = var.deployment_name
  description = var.description

  catalog_item_id      = data.vra_catalog_item.this.id
  catalog_item_version  = var.catalog_item_version
  project_id        = data.vra_project.this.id

  expand_last_request = true
  timeouts {
    create = "60m""
    delete = "2h"
  }
  inputs = {
  serviceLevel = var.serviceLevel
  }

}
