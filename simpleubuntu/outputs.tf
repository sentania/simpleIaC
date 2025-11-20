output "deployment_info" {
  value = {
    id   = vra_deployment.this.id
    name = vra_deployment.this.name
  }
}

output "machines_map" {
  value = {
    for r in vra_deployment.this.resources :
    r.id => {
      name = r.name
      type = r.type
    }
    if r.type == "Cloud.Machine"
  }
}

output "machines_list" {
  value = [
    for r in vra_deployment.this.resources : {
      id   = r.id
      name = r.name
      type = r.type
    }
    if r.type == "Cloud.Machine"
  ]
}

