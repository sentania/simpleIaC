provider "vra" {
  url           = var.url
  refresh_token = var.refresh_token
  insecure= "true"
}

data "vra_project" "this" {
  name = var.project_name
}

resource "vra_deployment" "this" {
  name        = var.deployment_name
  description = var.description

  blueprint_id      = "6ffb9557-44b1-4486-aeb1-972e92b0c7fd"
  blueprint_version = var.blueprint_version
  project_id        = data.vra_project.this.id

  expand_resources    = true
  expand_last_request = true
  timeouts {
    create = "60m"
    delete = "2h"
  }
  inputs = {
  serverSize = var.serverSize
  serviceLevel = var.serviceLevel
  serverCount = var.vm_count
  OS = var.OS
  }

}
