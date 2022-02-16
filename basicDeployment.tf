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
module sandboxOC1 {
    source           = "./openCart"
    project_name = "Opencart Application Group"
    catalog_item_version = "Release.3"
    deployment_name = "oc-sandbox-tf1"
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
module simpleIACSandbox {
    source           = "./simpleIaaS"
    project_name = "LabSandbox"
    catalog_item_version = "InitialRelease"
    deployment_name = "simpleIaaS"
    description = "simple iaas"
    serviceLevel = "sandbox"
    az = "az1"
    vm_count = "2"
    serverSize = "Small"
}