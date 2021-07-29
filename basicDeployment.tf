###Opencart Sandbox
module sandboxOC {
    source           = "./openCart"
    project_name = "Opencart Application Group"
    catalog_item_version = "Release.1"
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

###Opencart Test PCI
module testOpencart {
    source           = "./openCart"
    project_name = "Opencart Application Group"
    catalog_item_version = "Release.1"
    deployment_name = "oc-test-pci-tf"
    description = "oc-test-pci-tf"
    serviceLevel = "Test"
    cloudTarget = "vSphere"
    clusterSize = "small"
    size = "Small"
    compliance = "pci"
    username = "demouser"
    password ="VMware1!"
}