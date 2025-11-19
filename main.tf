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

