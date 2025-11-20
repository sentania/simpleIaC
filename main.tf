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

module multipleServer01 {
    source           = "./multipleubuntu"
    project_name = "VCF Lab Sandbox"
    catalog_item_version = "1"
    deployment_name = "Multiple Ubuntu Provisioned by TF"
    description = "Provisioned by TF"
    vmcount = 2
}

locals {
  machines = merge(
    module.multiubuntu.machines_map,
    module.singleubuntu.machines_map
  )
}


data "vra_machine" "all" {
  for_each = local.machines
  id       = each.value.id
}

locals {
  machines = data.vra_machine.all
}

data "templatefile" "lb_template" {
  template = file("${path.module}/lb-template.tpl")
  vars = {
    nodes = [
      for m in local.machines :
      "${m.address}:80"
    ]
  }
}

resource "local_file" "lb_config" {
  content  = data.templatefile.lb_template.rendered
  filename = "${path.cwd}/lb-config.conf"
}

