provider "vra" {
  url           = var.vra_url
  refresh_token = var.refresh_token
  insecure      = var.insecure
}

#VM Request
module nginxServer01 {
    source           = "./nginx"
    project_name = "Private Cloud Sandbox"
    catalog_item_version = "ProdWebServer"
    deployment_name = "Nginx Provisioned by TF"
    description = "Provisioned by TF"
    serviceLevel = "production"
    storagetier = "vsan"
}

#VM Request
module nginxServer02 {
    source           = "./nginx"
    project_name = "Private Cloud Sandbox"
    catalog_item_version = "ProdWebServer2"
    deployment_name = "Nginx Provisioned by TF"
    description = "Provisioned by TF"
    serviceLevel = "production"
    storagetier = "vsan"
}

