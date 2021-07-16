data "vra_project" "this" {
  name = var.project_name
}
data "vra_catalog_item" "this" {
  name = "Moad Opencart"
}
resource "vra_deployment" "this" {
  name        = var.deployment_name
  description = var.description

  catalog_item_id      = data.vra_catalog_item.this.id
  catalog_item_version  = var.catalog_item_version
  project_id        = data.vra_project.this.id

  expand_resources    = true
  expand_last_request = true
  timeouts {
    create = "60m"
    delete = "2h"
  }
  inputs = {
  cloutTarget = var.cloudTarget
  serviceLevel = var.serviceLevel
  size = var.size
  clusterSize = var.clusterSize
  compliance = var.compliance
  username = var.username
  password = var.password

  }

}
