vcfa_url          = "https://vcf-lab-automation.int.sentania.net"
vcfa_organization = "vcf-lab-vm-apps"

deployments = {
   myFifthDeployment = {
    project_name         = "VCF Lab Sandbox"
    catalog_item_name    = "VM With Disks"
    deployment_name      = "Ubuntu Provisioned by TF (x5)"
    description          = "Provisioned by TF"
    catalog_item_version = 2
    inputs = {
      flavorSize = "medium"
      diskCount  = 4
      diskSize   = 10
      image      = "ubuntu22"
    }
  }
  mySixthDeployment = {
    project_name         = "VCF Lab Sandbox"
    catalog_item_name    = "VM With Disks"
    deployment_name      = "Ubuntu Provisioned by TF (x6)"
    description          = "Provisioned by TF"
    catalog_item_version = 2
    inputs = {
      flavorSize = "medium"
      diskCount  = 2
      diskSize   = 10
      image      = "ubuntu22"
    }
  }
    deploymentWithTags = {
    project_name         = "VCF Lab Sandbox"
    catalog_item_name    = "VM With Disks"
    deployment_name      = "Ubuntu Deployment with vSphere Tags"
    description          = "Provisioned by TF"
    catalog_item_version = 3
    inputs = {
      flavorSize = "medium"
      diskCount  = 2
      diskSize   = 10
      image      = "ubuntu22"
      tags       =  jsonencode([{ "key": "serviceLevel", "value": "production" }, { "key": "application", "value": "finance" }])
      }
    }
}