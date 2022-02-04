###Opencart Sandbox
module sandboxOC {
    source           = "./openCart"
    project_name = "Opencart Application Group"
    catalog_item_version = "Release.3"
    deployment_name = "oc-sandbox-tf"
    description = "oc-sandbox-tf"
    serviceLevel = "Sandbox"
    cloudTarget = "vSphere"
    clusterSize = "small"
    size = "Small"
    compliance = "pci"
    username = "demouser"
    password ="VMware1!"
}

###Opencart Sandbox
module sandboxOC {
    source           = "./openCart"
    project_name = "Opencart Application Group"
    catalog_item_version = "Release.3"
    deployment_name = "oc-sandbox-t1f"
    description = "oc-sandbox-tf"
    serviceLevel = "Sandbox"
    cloudTarget = "vSphere"
    clusterSize = "small"
    size = "Small"
    compliance = "pci"
    username = "demouser"
    password ="VMware1!"
}