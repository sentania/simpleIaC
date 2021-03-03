module deployment1 {
    source           = "./dynamicCentOS"
    project_name = "LabSandbox"
    blueprint_version = "demo1"
    deployment_name = "deployment1"
    serviceLevel = "sandbox"
    serverSize = "Small"
    vm_count = "2"
    OS = "centOS7"
    description = "deployment1"
    refresh_token = var.refresh_token
}