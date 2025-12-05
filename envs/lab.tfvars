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
      tags = [
        { key = "serviceLevel", value = "production" },
        { key = "application", value = "finance" }
      ]
    }
  }
  deploymentExpectedTags = {
    project_name         = "VCF Lab Sandbox"
    catalog_item_name    = "VM With Disks"
    deployment_name      = "Ubuntu Deployment with vSphere with expected tags"
    description          = "Provisioned by TF"
    catalog_item_version = "explicittags"
    inputs = {
      flavorSize   = "medium"
      diskCount    = 2
      diskSize     = 10
      image        = "ubuntu24"
      serviceLevel = "sandbox"
      application  = "sandbox"
    }
  }
    guessIneedaNewVM = {
    project_name         = "VCF Lab Sandbox"
    catalog_item_name    = "VM With Disks"
    deployment_name      = "Deployed from Blueprint not Catalog"
    description          = "Provisioned by TF"
    catalog_item_version = 3
    inputs = {
      flavorSize = "medium"
      diskCount  = 2
      diskSize   = 10
      image      = "ubuntu22"
      tags = [
        { key = "serviceLevel", value = "production" },
        { key = "application", value = "finance" }
      ]
    }
  }
    testnewContentLibrary2 = {
    project_name         = "VCF Lab Sandbox"
    catalog_item_name    = "VM With Disks"
    deployment_name      = "New Content Library"
    description          = "Provisioned by TF"
    catalog_item_version = 3
    inputs = {
      flavorSize = "medium"
      diskCount  = 2
      diskSize   = 10
      image      = "ubuntu22"
      tags = [
        { key = "serviceLevel", value = "production" },
        { key = "application", value = "finance" }
      ]
    }
  }
}