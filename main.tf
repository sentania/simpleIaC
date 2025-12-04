#Blueprint request
module "deployments" {
  source   = "./virtualmachine"
  for_each = var.deployments

  project_name         = each.value.project_name
  deployment_name      = each.value.deployment_name
  description          = each.value.description
  catalog_item_name    = each.value.catalog_item_name
  catalog_item_version = each.value.catalog_item_version
  inputs               = each.value.inputs
}