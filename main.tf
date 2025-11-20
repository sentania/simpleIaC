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
module multipleServer01 {
    source           = "./multipleubuntu"
    project_name = "VCF Lab Sandbox"
    catalog_item_version = "1"
    deployment_name = "Multiple Ubuntu Provisioned by TF"
    description = "Provisioned by TF"
    vmcount = 2
}

locals {
  machines_map = merge(
    module.ubuntuServer02.machines_map,
    module.ubuntuServer01.machines_map,
    module.ubuntuServer03.machines_map,
    module.multipleServer01.machines_map
  )
}

data "vra_machine" "all" {
  for_each = local.machines_map
  id       = each.key
}    


resource "local_file" "server_list" {
  content  = templatefile("${path.module}/output-template.tpl", {
    nodes = data.vra_machine.all
  })
  filename = "${path.module}/server-list.txt"
}

