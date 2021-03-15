module deployment2 {
    source           = "./dynamicCentOS"
    project_name = "Human Resources"
    catalog_item_version = "InitialRelease"
    deployment_name = "HR 1"
    description = "TF Deployment"
    serviceLevel = "production"
    serverSize = "Small"
    vm_count = "2"
    az = "az1"
}

