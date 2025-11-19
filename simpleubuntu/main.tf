data "vra_project" "this" {
  name = var.project_name
}
data "vra_catalog_item" "this" {
  name = "Simple Ubuntu VM"
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


}
data "vra_machine" "this" {
  depends_on = [vra_deployment.this]
  filter     = "deploymentId eq '${vra_deployment.this.id}'"
}
