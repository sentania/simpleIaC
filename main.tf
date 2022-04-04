provider "vra" {
  url           = var.vra_url
  refresh_token = var.refresh_token
  insecure      = var.insecure
}
###Opencart Sandbox
module simpleIACSandbox {
    source           = "./simpleIaaS"
    project_name = "LabSandbox"
    catalog_item_version = "CentOS8"
    deployment_name = "simpleIaaS"
    description = "simple iaas"
    serviceLevel = "sandbox"
    az = "az1"
    vm_count = "2"
    serverSize = "Small"
}