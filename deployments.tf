url = "https://vra8.lab.sentania.net/"
project_name = "LabSandbox"

deployment_name = "IaC"
serviceLevel = "sandbox"
serverSize = "Small"
vm_count = "2"
OS = "centOS7"


module deployment1 {
    source           = "./dynamicCentOS"
    project_name = "LabSandbox"
    blueprint_version = "demo1"
    deployment_name = "deployment1"
    serviceLevel = "sandbox"
    serverSize = "Small"
    vm_count = "2"
    OS = "centOS7"
}