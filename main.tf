#VM Request
module ubuntuServer01 {
    source           = "./simpleubuntu"
    project_name = "VCF Lab Sandbox"
    catalog_item_version = "1"
    deployment_name = "Nginx Provisioned by TF"
    description = "Provisioned by TF"
}
module ubuntuServer02 {
    source           = "./simpleubuntu"
    project_name = "VCF Lab Sandbox"
    catalog_item_version = "1"
    deployment_name = "Simple Ubuntu Provisioned by TF"
    description = "Provisioned by TF"
}

module ubuntuServer03 {
    source           = "./simpleubuntu"
    project_name = "VCF Lab Sandbox"
    catalog_item_version = "1"
    deployment_name = "Simple Ubuntu -2 Provisioned by TF"
    description = "Provisioned by TF"
}

locals {
  machines_map = merge(
    module.ubuntuServer02.machines_map,
    module.ubuntuServer01.machines_map,
    module.ubuntuServer03.machines_map
  )
}

data "vra_machine" "all" {
  for_each = local.machines_map
  id       = each.key
}    


resource "local_file" "lb_config" {
  content  = templatefile("${path.module}/lb-template.tpl", {
    nodes = data.vra_machine.all
  })
  filename = "${path.module}/lb-config.conf"
}

