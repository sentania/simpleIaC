  
###My server
module demo01 {
    source           = "./basicIasVM"
    project_name = "Lab Sandbox"
    catalog_item_version = "InitialRelease"
    deployment_name = "HR Sandbox"
    description = "TF Deployment"
    serviceLevel = "sandbox"
    serverSize = "Small"
    vm_count = "2"
    az = "az1"
}