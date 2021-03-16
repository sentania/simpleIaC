#### HR Application
module HRDeployment1 {
    source           = "./basicIasVM"
    project_name = "Human Resources"
    catalog_item_version = "InitialRelease"
    deployment_name = "HR Sandbox"
    description = "TF Deployment"
    serviceLevel = "sandbox"
    serverSize = "Small"
    vm_count = "2"
    az = "az1"
}

module HRDeployment2 {
    source           = "./basicIasVM"
    project_name = "Human Resources"
    catalog_item_version = "InitialRelease"
    deployment_name = "HR Production"
    description = "TF Deployment"
    serviceLevel = "production"
    serverSize = "Small"
    vm_count = "2"
    az = "az2"
}

#### End HR Application