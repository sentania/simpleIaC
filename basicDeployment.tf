module deployment1 {
    source           = "./dynamicCentOS"
    project_name = "LabSandbox"
    blueprint_version = "LogInsight"
    deployment_name = "deployment1"
    description = "TF Deployment"
    serviceLevel = "sandbox"
    serverSize = "Small"
    vm_count = "2"
    OS = "centOS7"
}

module deployment2 {
    source           = "./dynamicCentOS"
    project_name = "LabSandbox"
    blueprint_version = "LogInsight"
    deployment_name = "deployment2"
    description = "TF Deployment"
    serviceLevel = "sandbox"
    serverSize = "Small"
    vm_count = "2"
    OS = "centOS7"
}