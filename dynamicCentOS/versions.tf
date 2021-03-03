
terraform {
  required_version = ">= 0.12"
  required_providers {
    vra = {
      source = "vmware/vra"
      version = ">= 0.3.3"
    }
  }

}
