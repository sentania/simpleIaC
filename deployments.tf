
module deployment2 {
    source           = "./dynamicCentOS"
    project_name = "LabSandbox"
    blueprint_version = "demo1"
    deployment_name = "deployment2"
    serviceLevel = "sandbox"
    serverSize = "Small"
    vm_count = "2"
    OS = "centOS7"
    description = "deployment2"
    refresh_token = var.refresh_token
    url = var.vra_url
}