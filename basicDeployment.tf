module deployment3 {
    source           = "./dynamicCentOS"
    project_name = "LabSandbox"
    blueprint_version = "LogInsight"
    deployment_name = "deployment3"
    description = "TF Deployment"
    serviceLevel = "sandbox"
    serverSize = "Small"
    vm_count = "2"
    OS = "centOS7"
}

module deploymenta {
    source           = "./dynamicCentOS"
    project_name = "LabSandbox"
    blueprint_version = "LogInsight"
    deployment_name = "deploymenta"
    description = "TF Deployment"
    serviceLevel = "sandbox"
    serverSize = "Small"
    vm_count = "3"
    OS = "centOS7"
}