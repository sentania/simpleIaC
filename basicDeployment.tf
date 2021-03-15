module deployment1 {
    source           = "./dynamicCentOS"
    project_name = "LabSandbox"
    blueprint_version = "LogInsight"
    deployment_name = "deployment1"
    description = "TF Deployment"
    serviceLevel = "production"
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

module deployment4 {
    source           = "./dynamicCentOS"
    project_name = "LabSandbox"
    blueprint_version = "LogInsight"
    deployment_name = "deployment4"
    description = "TF Deployment"
    serviceLevel = "sandbox"
    serverSize = "Small"
    vm_count = "2"
    OS = "centOS7"
}

module deployment5 {
    source           = "./dynamicCentOS"
    project_name = "LabSandbox"
    blueprint_version = "LogInsight"
    deployment_name = "deployment5"
    description = "TF Deployment"
    serviceLevel = "production"
    serverSize = "Small"
    vm_count = "2"
    OS = "centOS7"
}

module deployment6 {
    source           = "./dynamicCentOS"
    project_name = "LabSandbox"
    blueprint_version = "LogInsight"
    deployment_name = "deployment6"
    description = "TF Deployment"
    serviceLevel = "production"
    serverSize = "Small"
    vm_count = "2"
    OS = "centOS7"
}