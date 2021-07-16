  
###My server
module demo01 {
    source           = "./simpleIaaS"
    project_name = "LabSandbox"
    catalog_item_version = "InitialRelease"
    deployment_name = "HR Sandbox"
    description = "TF Deployment"
    serviceLevel = "sandbox"
    serverSize = "Small"
    vm_count = "2"
    az = "az1"
}
###My server
module sandboxOC {
    source           = "./openCart"
    project_name = "Opencart Application Group"
    catalog_item_version = "Release.1"
    deployment_name = "oc-sandbox-tf"
    description = "oc-sandbox-tf"
    serviceLevel = "sandbox"
    cloudTarget = "vSphere"
    clusterSize = "small"
    size = "small"
    compliance = "pci"
    username = "demouser"
    password ="VMware1!"
}