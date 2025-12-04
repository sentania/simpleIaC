vcfa_url          = "https://vcf-lab-automation.int.sentania.net"
vcfa_organization = "vcf-lab-vm-apps"

deployments = {
  myfirstdeployment = {
    project_name         = "vcf-lab-finance"
    catalog_item_name    = "Multiple Ubuntu"
    deployment_name      = "Ubuntu Provisioned by TF"
    description          = "Provisioned by TF"
    catalog_item_version = 1
    inputs = {
      flavorSize = "medium"
      diskCount  = 3
      diskSize   = 10
      image      = "ubuntu22"
    }
  }

}